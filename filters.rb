# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    # Your code Here
    @candidates.each do |candidate|
      if candidate[:id] == id
        return candidate
      end
    end
  end
  
  def experienced?(candidate)
    # Your code Here
    if candidate[:years_of_experience] >= 2
      return true
    else
      return false
    end
  end

  def github_master?(candidate)
    if candidate[:github_points] >= 100
      return true
    else
      return false
    end
  end

  def ruby_or_python(candidate)
    candidate[:languages].each do |language|
      if language == 'Ruby' || language == 'Python'
        return true
      else
        return false
      end
    end
  end

  def days_applied(candidate)
    if candidate[:date_applied] <= 15.days.ago.to_date
      return true
    else
        return false
    end
  end

  def age_limit(candidate)
    if candidate(:age) > 17
      return true
    else
        return false
    end
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    candidates.each do |candidate|
      if experienced?(candidate)
        qualified = true
  end
  
  # More methods will go below