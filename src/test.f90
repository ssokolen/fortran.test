module test_module

  double precision, allocatable, dimension(:,:) :: y
  
  contains
  
    subroutine init() bind(C, name = "init_")
      
      if (.not. allocated(y) ) then
        allocate(y(1,1))
      end if
      
      y = 1
    end subroutine init
    
    subroutine eval(x, z) bind(C, name = "eval_")
    
      double precision, intent(in) :: x
      double precision, intent(out) :: z
    
      z = x + y(1,1)
    
    end subroutine eval
    
end module test_module
