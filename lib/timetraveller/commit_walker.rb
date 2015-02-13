require 'rugged'

module Timetraveller
  class CommitWalker
    def initialize(path)
      @path = path
      @repo = Rugged::Repository.discover(@path)
      @walker = Rugged::Walker.new(@repo)
      @walker.sorting(Rugged::SORT_TOPO | Rugged::SORT_REVERSE)
      @walker.push('HEAD')
    end

    def do_command(cmd)
      @walker.to_a.each_slice(10).map(&:last).each do |c|
        DirectoryState.with_commit(c, @path)
        Executor.command(cmd, @path)
      end
    end
  end
end
