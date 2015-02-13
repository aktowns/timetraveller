require 'open3'

module Timetraveller
  class Executor

    def self.command(cmd, path, echo = true)
      Open3.popen2e(cmd, chdir: path) do |stdin, stdout_err, wait_thr|
        while line = stdout_err.gets
          puts line if echo
        end

        exit_status = wait_thr.value
        unless exit_status.success?
          abort "FAILED !!! #{cmd}"
        end
      end
    end

  end
end
