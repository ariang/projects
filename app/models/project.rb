class Project < ApplicationRecord
    # Custom scopes
    # Add defaults (certain records have default values (like SQL))
    # Integrate Validation (Form Validation)
    # Integrate Callbacks
    # Integrate Database Relationships (like PHPMyAdmin)

    has_many :tasks

    # after_create wipes out values you may or may not wipe out, thats why initialize
    after_initialize :set_defaults

    # validates the values
    validates_presence_of :title, :description, :percent_complete

    scope :almost_completed, -> { where('percent_complete > 75.0')}
    scope :still_needs_some_work, -> { where('percent_complete < 75.0')}


    # self checks the Object for the value of %complete if its nil and sets it as 0.0
    # most efficient and easiest way without db migrate and stuff
    def set_defaults
        self.percent_complete ||= 0.0
    end
end
