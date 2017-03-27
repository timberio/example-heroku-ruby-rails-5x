class ExceptionController < ApplicationController
  def index
    # demonstrates how exceptions work in with Timber in ruby / rails apps
    raise "boom!"
  end
end
