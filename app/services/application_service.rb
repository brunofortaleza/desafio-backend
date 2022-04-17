# frozen_string_literal: true

class ApplicationService
  CONSTANT = 'constant'.freeze

  class << self
    # Initialize the service
    def run(params, options: {})
      instance = new(params, options: options)

      block_given? ? instance.run(&Proc.new) : instance.run
    end

    alias call run
    alias factory run
    alias perfom run
  end

  private_class_method :new

  # Defines the service's initial method
  def run
    raise NotImplementedError unless action?
    block_given? ? send(action, &Proc.new) : send(action)
  end

  protected

  attr_reader :params
  attr_reader :options
  attr_reader :action

  alias args params

  private

  def initialize(params, options: {})
    @params = params
    @options = options
    @action = self.class::ACTION if defined?(self.class::ACTION) == CONSTANT
  end

  def action?
    @action.present?
  end
end
