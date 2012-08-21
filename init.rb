# Log viewer plugin for Redmine
# Copyright (c) 2012 Henrik Djärv
# Copyright (C) 2010  Haruyuki Iida
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
require 'redmine'
require 'admin_menu_hooks'

Redmine::Plugin.register :redmine_log_viewer do
  name 'Redmine Log Viewer plugin'
  author 'Henrik Djärv, Haruyuki Iida'
  description 'View Redmine application log files from within the administration interface.'
  version '0.1'
  requires_redmine :version_or_higher => '2.0.0'
  
  menu :admin_menu, :redmine_log_viewer, { :controller => 'logs', :action => 'index'}, :caption => :logs
end
