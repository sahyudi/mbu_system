<div class="top-banner" style="background-image: url(<?= base_url() ?>/assets/images/mbu2.png); color: #090808;">
	<div class="top-banner-title">Dashboard</div>
	<div class="top-banner-subtitle">Welcome back, <?php echo $active_user->name; ?>, <i class="fa fa-map-marker"></i> Batam City</div>
</div>
<div class="content with-top-banner">
	<div class="content-header no-mg-top">
		<i class="fa fa-newspaper-o"></i>
		<div class="content-header-title">Author Earnings</div>
		<select class="select-rounded pull-right">
			<option>Today</option>
			<option>7 Days</option>
			<option>14 Days</option>
			<option>Last Month</option>
		</select>
	</div>
	<div class="panel">
		<div class="row">
			<div class="col-md-3 card-wrapper">
				<div class="card">
					<i class="fa fa-newspaper-o"></i>
					<div class="clear">
						<div class="card-title">
							<span class="timer" data-from="0" data-to="11">11</span>
						</div>
						<div class="card-subtitle">PRODUCT</div>
					</div>
				</div>
				<div class="card-menu">
					<ul>
						<li><a href="">Today</a></li>
						<li><a href="">7 Days</a></li>
						<li><a href="">14 Days</a></li>
						<li><a href="">Last Month</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 card-wrapper">
				<div class="card">
					<i class="fa fa-signal"></i>
					<div class="clear">
						<div class="card-title">
							<span class="timer" data-from="0" data-to="70">70</span>%
						</div>
						<div class="card-subtitle">PRODUCTION RATE</div>
					</div>
				</div>
				<div class="card-menu">
					<ul>
						<li><a href="">Today</a></li>
						<li><a href="">7 Days</a></li>
						<li><a href="">14 Days</a></li>
						<li><a href="">Last Month</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 card-wrapper">
				<div class="card">
					<i class="fa fa-tasks"></i>
					<div class="clear">
						<div class="card-title">
							<span class="timer" data-from="0" data-to="24">24</span>
						</div>
						<div class="card-subtitle">PROJECT PROGRESS</div>
					</div>
				</div>
				<div class="card-menu">
					<ul>
						<li><a href="">Today</a></li>
						<li><a href="">7 Days</a></li>
						<li><a href="">14 Days</a></li>
						<li><a href="">Last Month</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 card-wrapper">
				<div class="card">
					<i class="fa fa-users"></i>
					<div class="clear">
						<div class="card-title">
							<span class="timer" data-from="0" data-to="20">20</span>
						</div>
						<div class="card-subtitle">MEETING</div>
					</div>
				</div>
				<div class="card-menu">
					<ul>
						<li><a href="">Today</a></li>
						<li><a href="">7 Days</a></li>
						<li><a href="">14 Days</a></li>
						<li><a href="">Last Month</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="panel">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="content-header">
					<i class="fa fa-newspaper-o"></i>
					<div class="content-header-title">New Products</div>
				</div>
				<div class="content-box">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th><input type="checkbox"></th>
									<th>Product Name</th>
									<th class="text-center">Images</th>
									<th class="text-center">Status</th>
									<th class="text-right">Order Total</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><input type="checkbox"></th>
									<td class="nowrap">Produk 1</td>
									<td class="text-center"><img alt="pongo" class="image-table" src="<?php echo base_url() . 'assets/images/asparagus.jpg'; ?>"></td>
									<td class="text-center">
										<div class="status-pill green"></div>
									</td>
									<td class="text-right">Rp. 2.000.000</td>
									<td class="text-center"><i class="fa fa-pencil"></i> <i class="fa fa-trash"></i></td>
								</tr>
								<tr>
									<th><input type="checkbox"></th>
									<td class="nowrap">Produk 2</td>
									<td class="text-center"><img alt="pongo" class="image-table" src="<?php echo base_url() . 'assets/images/belts.jpg'; ?>"></td>
									<td class="text-center">
										<div class="status-pill red"></div>
									</td>
									<td class="text-right">Rp. 2.500.000</td>
									<td class="text-center"><i class="fa fa-pencil"></i> <i class="fa fa-trash"></i></td>
								</tr>
								<tr>
									<th><input type="checkbox"></th>
									<td class="nowrap">Produk 3</td>
									<td class="text-center"><img alt="pongo" class="image-table" src="<?php echo base_url() . 'assets/images/bulldozer.jpg'; ?>"></td>
									<td class="text-center">
										<div class="status-pill yellow"></div>
									</td>
									<td class="text-right">Rp. 3.000.000</td>
									<td class="text-center"><i class="fa fa-pencil"></i> <i class="fa fa-trash"></i></td>
								</tr>
								<tr>
									<th><input type="checkbox"></th>
									<td class="nowrap">Produk 4</td>
									<td class="text-center"><img alt="pongo" class="image-table" src="<?php echo base_url() . 'assets/images/chocolate.jpg'; ?>"></td>
									<td class="text-center">
										<div class="status-pill green"></div>
									</td>
									<td class="text-right">Rp. 2.800.000</td>
									<td class="text-center"><i class="fa fa-pencil"></i> <i class="fa fa-trash"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
	</div>
</div>