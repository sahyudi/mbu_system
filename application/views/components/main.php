<?php $this->load->view('components/head'); ?>
<div class="top-nav">
	<div class="top-nav-box">
		<div class="side-nav-mobile"><i class="fa fa-bars"></i></div>
		<div class="logo-wrapper">
			<div class="logo-box">
				<a href="<?php echo base_url(); ?>">
					<img alt="pongo" src="<?php echo base_url() . 'assets/images/mbu.png'; ?>" style="width: 119px;height: 36px;">
					<!-- <div class="logo-title">Pongo</div> -->
				</a>
			</div>
		</div>
		<div class="top-nav-content">
			<div class="top-nav-box">
				<div class="quick-link">
					<div class="link-icon"><i class="fa fa-bars"></i></div>
					<ul class="animated bounceInUp">
						<li><a href=""><i class="fa fa-bars"></i> Mailbox</a></li>
						<li><a href=""><i class="fa fa-map-marker"></i> Calendar</a></li>
						<li><a href=""><i class="fa fa-suitcase"></i> Map</a></li>
						<li><a href=""><i class="fa fa-signal"></i> Trainning</a></li>
						<li><a href=""><i class="fa fa-paper-plane"></i> Photos</a></li>
						<li><a href=""><i class="fa fa-map-o"></i> Timeline</a></li>
					</ul>
				</div>
				<div class="global-search">
					<form class="form-inline">
						<button class="btn btn-primary" type="submit"> <i class="fa fa-search"></i></button>
						<input class="form-control mb-1 mr-sm-1 mb-sm-0" placeholder="Search projects..." type="text">
					</form>
				</div>
				<!-- <div class="top-notification">
					<div class="notification-icon">
						<i class="fa fa-envelope-open"></i>
					</div>
					<div class="notification-icon">
						<div class="notification-badge bounceInDown animated timer" data-from="0" data-to="21">21</div>
						<i class="fa fa-comments"></i>
						<div class="notification-wrapper animated bounceInUp">
							<div class="notification-header">Notifications <span class="notification-count">3</span></div>
							<div class="notification-body">
								<a class="notification-list" href="">
									<div class="notification-image">
										<img alt="pongo" src="<?php echo base_url() . 'assets/images/asparagus.jpg'; ?>">
									</div>
									<div class="notification-content">
										<div class="notification-text"><strong>Mark</strong> sent you a message</div>
										<div class="notification-time">1 minutes ago</div>
									</div>
								</a>
								<a class="notification-list" href="">
									<div class="notification-image">
										<img alt="pongo" src="<?php echo base_url() . 'assets/images/chocolate.jpg'; ?>">
									</div>
									<div class="notification-content">
										<div class="notification-text"><strong>Lisa</strong> sent you a message</div>
										<div class="notification-time">1 minutes ago</div>
									</div>
								</a>
							</div>
							<div class="notification-footer">
								<a href="">See all notifications</a>
							</div>
						</div>
					</div>
					<div class="notification-icon">
						<div class="notification-badge bounceInDown animated timer" data-from="0" data-to="3">3</div>
						<i class="fa fa-bell"></i>
						<div class="notification-wrapper animated bounceInUp">
							<div class="notification-header">Notifications <span class="notification-count">3</span></div>
							<div class="notification-body">
								<a class="notification-list" href="">
									<div class="notification-image">
										<img alt="pongo" src="<?php echo base_url() . 'assets/images/asparagus.jpg'; ?>">
									</div>
									<div class="notification-content">
										<div class="notification-text"><strong>Mark</strong> sent you a email</div>
										<div class="notification-time">1 minutes ago</div>
									</div>
								</a>
								<a class="notification-list" href="">
									<div class="notification-image">
										<img alt="pongo" src="<?php echo base_url() . 'assets/images/chocolate.jpg'; ?>">
									</div>
									<div class="notification-content">
										<div class="notification-text"><strong>Lisa</strong> sent you a email</div>
										<div class="notification-time">1 minutes ago</div>
									</div>
								</a>
								<a class="notification-list" href="">
									<div class="notification-image">
										<img alt="pongo" src="<?php echo base_url() . 'assets/images/belts.jpg'; ?>">
									</div>
									<div class="notification-content">
										<div class="notification-text"><strong>Parker</strong> sent you a email</div>
										<div class="notification-time">1 minutes ago</div>
									</div>
								</a>
								<a class="notification-list" href="">
									<div class="notification-image">
										<img alt="pongo" src="<?php echo base_url() . 'assets/images/asparagus.jpg'; ?>">
									</div>
									<div class="notification-content">
										<div class="notification-text"><strong>Sophie</strong> sent you a email</div>
										<div class="notification-time">1 minutes ago</div>
									</div>
								</a>
								<a class="notification-list" href="">
									<div class="notification-image">
										<img alt="pongo" src="<?php echo base_url() . 'assets/images/asparagus.jpg'; ?>">
									</div>
									<div class="notification-content">
										<div class="notification-text"><strong>Sophie</strong> sent you a email</div>
										<div class="notification-time">1 minutes ago</div>
									</div>
								</a>
								<a class="notification-list" href="">
									<div class="notification-image">
										<img alt="pongo" src="<?php echo base_url() . 'assets/images/asparagus.jpg'; ?>">
									</div>
									<div class="notification-content">
										<div class="notification-text"><strong>Sophie</strong> sent you a email</div>
										<div class="notification-time">1 minutes ago</div>
									</div>
								</a>
							</div>
							<div class="notification-footer">
								<a href="">See all notifications</a>
							</div>
						</div>
					</div>
				</div> -->
				<div class="user-top-profile">
					<div class="user-image">
						<div class="user-on"></div>
						<img alt="pongo" src="<?php echo base_url() . 'assets/images/profile.jpg'; ?>">
					</div>
					<div class="clear">
						<div class="user-name"><?php echo $active_user->name; ?></div>
						<div class="user-group"><?php echo $active_user_group->group_name; ?></div>
						<ul class="user-top-menu animated bounceInUp">
							<li><a href="<?php echo base_url() . 'profile'; ?>">Profile <div class="badge badge-yellow pull-right">2</div></a></li>
							<li><a href="<?php echo base_url() . 'settings'; ?>">Settings</a></li>
							<li><a href="<?php echo base_url() . 'change_password'; ?>">Change Password</a></li>
							<li><a href="<?php echo base_url() . 'auth/logout'; ?>">Logout</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="profile-nav-mobile"><i class="fa fa-cog"></i></div>
	</div>
</div>
<div class="wrapper <?php echo $menu_style != 'default' ? $menu_style : ''; ?>">
	<aside class="side-nav">
		<!-- <div class="side-notification">
			<div class="notification-icon">
				<i class="fa fa-envelope-open"></i>
			</div>
			<div class="notification-icon">
				<div class="notification-badge bounceInDown animated timer" data-from="0" data-to="21">21</div>
				<i class="fa fa-comments"></i>
				<div class="notification-wrapper animated bounceInUp">
					<div class="notification-header">Notifications <span class="notification-count">3</span></div>
					<div class="notification-body">
						<a class="notification-list" href="">
							<div class="notification-image">
								<img alt="pongo" src="<?php echo base_url() . 'assets/images/asparagus.jpg'; ?>">
							</div>
							<div class="notification-content">
								<div class="notification-text"><strong>Mark</strong> sent you a message</div>
								<div class="notification-time">1 minutes ago</div>
							</div>
						</a>
						<a class="notification-list" href="">
							<div class="notification-image">
								<img alt="pongo" src="<?php echo base_url() . 'assets/images/chocolate.jpg'; ?>">
							</div>
							<div class="notification-content">
								<div class="notification-text"><strong>Lisa</strong> sent you a message</div>
								<div class="notification-time">1 minutes ago</div>
							</div>
						</a>
					</div>
					<div class="notification-footer">
						<a href="">See all notifications</a>
					</div>
				</div>
			</div>
			<div class="notification-icon">
				<div class="notification-badge bounceInDown animated timer" data-from="0" data-to="3">3</div>
				<i class="fa fa-bell"></i>
				<div class="notification-wrapper animated bounceInUp">
					<div class="notification-header">Notifications <span class="notification-count">3</span></div>
					<div class="notification-body">
						<a class="notification-list" href="">
							<div class="notification-image">
								<img alt="pongo" src="<?php echo base_url() . 'assets/images/asparagus.jpg'; ?>">
							</div>
							<div class="notification-content">
								<div class="notification-text"><strong>Mark</strong> sent you a email</div>
								<div class="notification-time">1 minutes ago</div>
							</div>
						</a>
						<a class="notification-list" href="">
							<div class="notification-image">
								<img alt="pongo" src="<?php echo base_url() . 'assets/images/chocolate.jpg'; ?>">
							</div>
							<div class="notification-content">
								<div class="notification-text"><strong>Lisa</strong> sent you a email</div>
								<div class="notification-time">1 minutes ago</div>
							</div>
						</a>
						<a class="notification-list" href="">
							<div class="notification-image">
								<img alt="pongo" src="<?php echo base_url() . 'assets/images/belts.jpg'; ?>">
							</div>
							<div class="notification-content">
								<div class="notification-text"><strong>Parker</strong> sent you a email</div>
								<div class="notification-time">1 minutes ago</div>
							</div>
						</a>
						<a class="notification-list" href="">
							<div class="notification-image">
								<img alt="pongo" src="<?php echo base_url() . 'assets/images/asparagus.jpg'; ?>">
							</div>
							<div class="notification-content">
								<div class="notification-text"><strong>Sophie</strong> sent you a email</div>
								<div class="notification-time">1 minutes ago</div>
							</div>
						</a>
						<a class="notification-list" href="">
							<div class="notification-image">
								<img alt="pongo" src="<?php echo base_url() . 'assets/images/asparagus.jpg'; ?>">
							</div>
							<div class="notification-content">
								<div class="notification-text"><strong>Sophie</strong> sent you a email</div>
								<div class="notification-time">1 minutes ago</div>
							</div>
						</a>
						<a class="notification-list" href="">
							<div class="notification-image">
								<img alt="pongo" src="<?php echo base_url() . 'assets/images/asparagus.jpg'; ?>">
							</div>
							<div class="notification-content">
								<div class="notification-text"><strong>Sophie</strong> sent you a email</div>
								<div class="notification-time">1 minutes ago</div>
							</div>
						</a>
					</div>
					<div class="notification-footer">
						<a href="">See all notifications</a>
					</div>
				</div>
			</div>
		</div> -->
		<div class="user-side-profile">
			<div class="user-image">
				<div class="user-on"></div>
				<img alt="pongo" src="<?php echo base_url() . 'assets/images/profile.jpg'; ?>" style="width: 100%;
    height: 100%;">
			</div>
			<div class="clear">
				<div class="user-name"><?php echo $active_user->name; ?></div>
				<div class="user-group"><?php echo $active_user_group->group_name; ?></div>
				<ul class="user-side-menu animated bounceInUp">
					<li><a href="<?php echo base_url() . 'profile'; ?>">Profile <div class="badge badge-yellow pull-right">2</div></a></li>
					<li><a href="<?php echo base_url() . 'settings'; ?>">Settings</a></li>
					<li><a href="<?php echo base_url() . 'change_password'; ?>">Change Password</a></li>
					<li><a href="<?php echo base_url() . 'auth/logout'; ?>">Logout</a></li>
				</ul>
			</div>
		</div>
		<div class="main-menu-title">Menu</div>
		<div class="main-menu">
			<ul>
				<li class="<?php echo $active_menu == 0 ? 'active' : ''; ?>">
					<a href="<?php echo base_url(); ?>">
						<i class="fa fa-bars"></i>
						<span>Dashboard</span>
					</a>
				</li>
				<?php foreach ($list_menu as $key => $menu) { ?>
					<?php if ($menu->id < 60) { ?>
						<!-- Print parent menu -->
						<?php if ($menu->parent_id == 0 && $menu->is_have_child != 0) { ?>
							<li class="<?php echo $active_menu == $menu->id && $menu_style != 'compact-nav' ? 'active' : ''; ?>">
								<a href="">
									<i class="<?php echo $menu->icon; ?>"></i>
									<span><?php echo $menu->title; ?></span>
									<?php if ($key == 0) { ?>
										<!-- <div class="badge badge-red pull-right">21</div> -->
									<?php } elseif ($key == 6) { ?>
										<!-- <div class="badge badge-grey pull-right">121</div> -->
									<?php } ?>
								</a>
								<ul>
									<!-- Print submenu -->
									<?php foreach ($list_menu as $submenu) { ?>
										<?php if ($submenu->parent_id == $menu->id) { ?>
											<li><a href="<?php echo base_url() . $submenu->link; ?>"><?php echo $submenu->title; ?></a></li>
										<?php } ?>
									<?php } ?>
								</ul>
							</li>
						<?php } elseif ($menu->parent_id == 0 && $menu->is_have_child == 0) { ?>
							<li class="<?php echo $active_menu == $menu->id ? 'active' : ''; ?>">
								<a href="<?php echo base_url() . $menu->link; ?>">
									<i class="<?php echo $menu->icon; ?>"></i>
									<span><?php echo $menu->title; ?></span>
								</a>
							</li>
						<?php } ?>
					<?php } ?>
				<?php } ?>
			</ul>
		</div>
		<div class="main-menu-title">HTML Template</div>
		<div class="main-menu">
			<ul>
				<?php foreach ($list_menu as $key => $menu) { ?>
					<?php if ($menu->id > 60) { ?>
						<!-- Print parent menu -->
						<?php if ($menu->parent_id == 0 && $menu->is_have_child != 0) { ?>
							<li class="<?php echo $active_menu == $menu->id && $menu_style != 'compact-nav' ? 'active' : ''; ?>">
								<a href="">
									<i class="<?php echo $menu->icon; ?>"></i>
									<span><?php echo $menu->title; ?></span>
									<?php if ($key == 0) { ?>
										<!-- <div class="badge badge-red pull-right">21</div> -->
									<?php } elseif ($key == 6) { ?>
										<!-- <div class="badge badge-grey pull-right">121</div> -->
									<?php } ?>
								</a>
								<ul>
									<!-- Print submenu -->
									<?php foreach ($list_menu as $submenu) { ?>
										<?php if ($submenu->parent_id == $menu->id) { ?>
											<li><a href="<?php echo base_url() . $submenu->link; ?>"><?php echo $submenu->title; ?></a></li>
										<?php } ?>
									<?php } ?>
								</ul>
							</li>
						<?php } elseif ($menu->parent_id == 0 && $menu->is_have_child == 0) { ?>
							<li class="<?php echo $active_menu == $menu->id ? 'active' : ''; ?>">
								<a href="<?php echo base_url($menu->link); ?>">
									<i class="<?php echo $menu->icon; ?>"></i>
									<span><?php echo $menu->title; ?></span>
								</a>
							</li>
						<?php } ?>
					<?php } ?>
				<?php } ?>
			</ul>
		</div>

	</aside>
	<div class="main">
		<?php $this->load->view($subview); ?>
	</div>
</div>
<?php $this->load->view('components/foot'); ?>