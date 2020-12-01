#!/usr/bin/env ruby
# frozen_string_literal: true

# SPDX-License-Identifier: GPL-3.0-or-later

# usage: ./1-Report_Repair.rb input-day1

entries = []

ARGF.each do |entry|
  entries << entry.to_i
end

entries.sort!

puts 'part 1'
done = false
entries.each do |e1|
  entries.reverse_each do |e2|
    if e1 + e2 == 2020
      puts "entry1: #{e1}, entry2: #{e2}, sum: #{e1 + e2}, product: #{e1 * e2}"
      done = true
      break
    end
    break if done
  end
end

puts 'part 2'
done = false
entries.each_index do |i|
  entries.drop(i + 1).each do |e1|
    entries.reverse_each do |e2|
      next unless entries[i] + e1 + e2 == 2020

      puts "entries[i]: #{entries[i]}, entry1: #{e1}, entry2: #{e2}, sum: #{entries[i] + e1 + e2}, product: #{entries[i] * e1 * e2}"
      done = true
      break
    end
    break if done
  end
  break if done
end
