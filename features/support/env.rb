require 'rspec'
require 'page-object'
require 'fig_newton'

World(PageObject::PageFactory)
FigNewton.load('local.yml')
