#!/usr/bin/ruby
#encoding: cp866
#  Без имени.rb
#  
#  Copyright 2013 Mikhail Meshkov <mihailmes@gmail.com>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  



class String
	def rr
		if self[-1]=="\n" then return self.chop else return self end
	end
	def tt
		la = IO.read('la.pp')
		o  = IO.read('o.pp')
		h  = IO.read('h.pp')
		if self[0..14]=='LANTHANUM  57.0' then puts self.rr+la
		elsif self[0..14]=='OXYGEN      8.0' then puts self.rr+o
		elsif self[0..14]=='HYDROGEN    1.0' then puts self.rr+h
		else puts self 
		end
	end
end


$stdout = File.open('exp1_r.inp', 'w')
a = IO.read('exp1.inp')
a.each_line{|p| p.tt}






#attr_reader :name
#$stdin = File.open('входные данные.txt')
#puts a.scan("$%").size
#x = StdClass.new(gets.chomp)
#y = StdClass.new(gets.chomp)
#stderr = File.open('сообщения об ошибках.txt', 'w')
#puts x.name
#puts y.name
#raise 'Принудительно вызываем ошибку'
