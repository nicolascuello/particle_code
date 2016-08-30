module variables

    implicit none
    
! Parallel computing
    integer :: setthreads
    
! I/O files & directories
    
    ! Inputs namelist
    character(len=128) :: input_file
    ! FARGO data directory
    character(len=128) :: fargo_datadir
    ! Output directory
    character(len=128) :: output_dir
    
! Grid data

    ! Number of radial gridpoints
    integer :: N_R
    ! Number of azimuthal grid points
    integer :: N_theta
    ! Number of Fargo snapshots
    integer :: N_t
    
    ! Radial grid
    double precision, allocatable :: R(:)
    ! Interfaces of radial grid
    double precision, allocatable :: R_int(:)
    ! Theta grid
    double precision, allocatable :: theta(:)
    ! Interfaces of theta grid
    double precision, allocatable :: theta_int(:)
    
    ! Gas surface density
    double precision, allocatable :: sigma_gas(:, :, :)
    ! Gas radial velocity
    double precision, allocatable :: vR_gas(:, :, :)
    ! Gas azimuthal velocity
    double precision, allocatable :: vTheta_gas(:, :, :)
    
    ! Planet position in cartesian coordinates
    double precision, allocatable :: x_planet(:)
    double precision, allocatable :: y_planet(:)
    ! Planet velocity in cartesian coordinates
    double precision, allocatable :: vX_planet(:)
    double precision, allocatable :: vY_planet(:)
    ! Planet position in polar coordinates
    double precision, allocatable :: R_planet(:)
    double precision, allocatable :: theta_planet(:)
    ! Planet velocity in polar coordinates
    double precision, allocatable :: vR_planet(:)
    double precision, allocatable :: vTheta_planet(:)
    ! Planet mass
    double precision, allocatable :: m_planet(:)
    
    ! Position and velocity of dust particles in cartesian coordinates
    double precision, allocatable :: x_dust(:)
    double precision, allocatable :: y_dust(:)
    double precision, allocatable :: vX_dust(:)
    double precision, allocatable :: vY_dust(:)
    ! Position and velocity of dust particles in polar coordinates
    double precision, allocatable :: R_dust(:)
    double precision, allocatable :: theta_dust(:)
    double precision, allocatable :: vR_dust(:)
    double precision, allocatable :: vTheta_dust(:)
    ! Specific angular momentum of dust
    double precision, allocatable :: L_dust(:)
    ! Mass of dust particles
    double precision, allocatable :: m_dust(:)
    ! Radius of dust particles
    double precision, allocatable :: a_dust(:)
    ! Minimum and maximum mass of dust particles
    double precision              :: a_min, a_max
    ! Initial mass distribution of dust particles
    integer                       :: a_dist_log
    ! Bulk density of dust particles
    double precision              :: rho_b
    ! Initial particle distribution
    integer                       :: dens_dist
    ! Box for particle distribution
    double precision :: R_ring
    ! Stokes number of particles
    double precision, allocatable :: St(:)
    ! Stopping time of particles
    double precision, allocatable :: tstop(:)
    
    ! Time of the snapshots
    double precision, allocatable :: time(:)
    
    ! Current values of variables
    double precision, allocatable :: cur_sigma_gas(:, :)
    double precision, allocatable :: cur_vR_gas(:, :)
    double precision, allocatable :: cur_vTheta_gas(:, :)
    double precision              :: cur_R_planet
    double precision              :: cur_theta_planet
    double precision              :: cur_X_planet
    double precision              :: cur_Y_planet
    double precision              :: cur_m_planet
    
! Simulation data
    
    ! First and last snapshot of dust simulation
    integer :: i_start, i_stop
    ! Number of dust particles
    integer :: N_dust
    ! Physical distance of the of the Fargo distance unit
    double precision :: phys_dist
    ! Physical mass of the of the Fargo mass unit
    double precision :: phys_mass
    
! Disk parameters

    ! Alpha viscosity parameter
    double precision :: alpha
    ! Mean molecular weight of gas
    double precision :: mu
    ! Aspect ratio at R=1
    double precision :: aspect
    ! Flaring index
    double precision :: flaring_index
    ! Smoothing length
    double precision :: smoothing

end module variables