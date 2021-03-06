# Encoding: utf-8
# Copyright (c) 2013 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'spec_helper'
require 'build/dependency/ruby/ruby_resources'

describe Build::Dependency::RubyResources do

  it 'should calculate RESOURCES_DIR' do
    expect(StubRubyResources::RESOURCES_DIR).to eq(File.expand_path('resources/ruby'))
  end

  it 'should calculate VENDOR_DIR' do
    expect(StubRubyResources::VENDOR_DIR).to eq(File.expand_path('vendor/ruby'))
  end

  class StubRubyResources
    include Build::Dependency::RubyResources
  end

end
