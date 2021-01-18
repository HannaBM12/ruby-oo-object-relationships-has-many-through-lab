
class Patient 

    @@all = []

    attr_reader :name
    
    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appointment_inst|
            appointment_inst.patient == self}
    end

    def doctors
        appointments.collect {|appointment_inst|
            appointment_inst.doctor}
    end



end

