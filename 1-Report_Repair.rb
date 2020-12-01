#!/usr/bin/env ruby
# frozen_string_literal: true

# SPDX-License-Identifier: GPL-3.0-or-later

entries = []

ARGF.each do |entry|
  entries << entry.to_i
end

entries.sort!

entries.each do |e1|
  entries.reverse_each do |e2|
    if e1 + e2 == 2020
      puts "entry1: #{e1}, entry2: #{e2}, sum: #{e1 + e2}, product: #{e1 * e2}"
      exit
    end
  end
end
