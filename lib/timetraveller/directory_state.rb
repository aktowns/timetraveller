module Timetraveller
  class DirectoryState
    attr_reader :sha

    def initialize(commit, changes, target)
      @commit = commit
      @sha = commit.oid
      @changes = changes
      @target = target
    end

    def self.with_commit(commit, target)
      changes = commit.diff_workdir.each_delta.to_a
          .map {|delta| File.join(target, delta.new_file[:path].to_s)}
          .select{|path| File.extname(path) == '.rb'}

      Executor.command("git checkout #{commit.oid}", target, false)

      DirectoryState.new(commit, changes, target)
    end

    def changed_files
      @changes
    end
  end
end
