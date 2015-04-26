#Replace the body of the method with the new algorithm.
def found_friends(people)
  friends = []
  people.each do |person|
    if(person == 'Dom')
      friends << 'Dom'
    end
    if(person == 'John')
      friends << 'John'
    end
    if(person == 'Kent')
      friends << 'Kent'
    end
  end
  return friends
end
#above refac
def found_friends(people)
  people.select do |person|
    %w(Don Kent John).include? person
  end
end

