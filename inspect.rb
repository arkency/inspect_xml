require 'nokogiri'

class MyDocument < Nokogiri::XML::SAX::Document
  class NodeInfo
    def initialize(path)
      @path = path
      @count = 0
      @values = Hash.new(0)
    end

    def occured
      @count += 1
    end

    def add_value(val)
      @values[val] += 1 if @values.size <= max_unique_values
    end

    def path
      @path.join("/")
    end

    def count
      @count
    end

    def values
      return {} unless limited_values?
      @values.sort_by{|_,v| -v}.to_h
    end

    private

    def limited_values?
      @values.size > 0 && @values.size <= max_unique_values
    end

    def max_unique_values
      100
    end
  end

  def start_document
    @path = []
    @nodes = {}
    @characters = ""
    @counter = 0
  end

  def start_element(name, _attributes = [])
    @path << name
    @characters = ""
    node_info.occured
    @counter += 1
    puts @counter if @counter % 1000 == 0
  end

  def characters(string)
    @characters << string
  end

  def cdata_block(string)
    @characters << string
  end

  def end_element(name)
    node_info.add_value(@characters) if @characters.present?
    @characters = ""
    raise "Expected #{last_path_element} but got #{name}" unless name == @path.pop
  end

  attr_reader :nodes

  private

  def node_info
    @nodes[current_path] ||= NodeInfo.new(current_path)
  end

  def current_path
    @path.dup
  end
end

my_document = MyDocument.new
File.open(ARGV[0]) do |f|
  parser = Nokogiri::XML::SAX::Parser.new(my_document)
  parser.parse(f)
end

nodes = my_document.nodes
nodes.keys.sort.each do |path|
  node = nodes[path]
  puts "#{node.path} - #{node.count}"
  node.values.each do |val, count|
    puts "  #{val} - #{count}"
  end
end; nil
