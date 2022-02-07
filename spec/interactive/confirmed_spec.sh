Describe 'confirmed.sh'
  Include 'interactive/confirmed.sh'
  Describe 'confirmed()'
    It 'an answer of yes should return 0'
      Data 'yes'
      When call confirmed "Skip running?"
      # The stderr should include 'Skip running?'
      The status should be success
    End
    It 'an answer of no should return 1'
      Data 'no'
      When call confirmed "Skip running?"
      # The stderr should include 'Skip running?'
      The status should be failure
    End
  End
End
