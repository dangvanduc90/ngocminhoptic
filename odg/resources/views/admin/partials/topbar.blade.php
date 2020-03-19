<nav class="navbar navbar-light navbar-glass fs--1 font-weight-semi-bold row navbar-top sticky-kit navbar-expand">
	<button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarVerticalCollapse" aria-controls="navbarVerticalCollapse" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button><a class="navbar-brand text-left ml-3" href="../index.html">
		<div class="d-flex align-items-center text-primary">
			<div class="d-inline-flex flex-center"><img class="mr-2" src="{{asset('backend/pages/assets/img/illustrations/falcon.png')}}" alt="" width="40" /><span class="text-sans-serif">ODG</span></div>
		</div>
	</a>
	<div class="collapse navbar-collapse" id="navbarNavDropdown1">
		<ul class="navbar-nav align-items-center ml-auto">
			<li class="nav-item dropdown">
                 {{auth()->user()->username}}
            </li>
			<li class="nav-item dropdown">
				<a class="nav-link pr-0" id="navbarDropdownUser" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<div class="avatar avatar-xl">
						<img class="rounded-circle" src="{{asset('backend/pages/assets/img/team/3.jpg')}}" alt="" />
					</div>
				</a>
				<div class="dropdown-menu dropdown-menu-right py-0" aria-labelledby="navbarDropdownUser">
					<div class="bg-white rounded-soft py-2">
						<a class="dropdown-item" href="{{route('profile.get')}}">Thông tin cá nhân</a>

						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="{{ route('logout') }}"  onclick="event.preventDefault();
						document.getElementById('logout-form').submit();">  
							<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
								@csrf
							</form>Đăng xuất
						</a>
					</div>
				</div>
			</li>
		</ul>
	</div>
</nav>