<div class="auth-wrapper">
    <form id="form-signin">
        <div class="auth-header">
            <div class="auth-title">Pongo</div>
            <div class="auth-subtitle">Simple and Clean Admin Template</div>
            <div class="auth-label">Login</div>
        </div>
        <div class="auth-body">
            <div class="auth-content">
                <div class="form-group">
                    <label for="">Email</label>
                    <input class="form-control" placeholder="Enter email" name="email" type="text" value="johndoe@native-theme.com">
                </div>
                <div class="form-group">
                    <label for="">Password</label>
                    <input class="form-control" placeholder="Enter password" name="password" type="password" value="123456">
                    <div class="validation-message" data-field="password"></div>
                </div>
            </div>
            <div class="auth-footer">
                <button class="btn btn-primary" id="sign-in" type="button">Log me in</button>
                <div class="pull-right auth-link">
                    <label class="check-label"><input type="checkbox" name="keep_login" value="true"> Remember Me</label>
                    <div class="devider"></div>
                    <a href="">Forgot Password?</a>
                </div>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
	$('#sign-in').on("click", function() {
		login();
	});
	$("#form-signin").keypress(function(event) {
		if (event.which == 13) {
			login();
		}
	});

	function login() {
		$('#sign-in').html("Authenticating...").attr('disabled', true);
		var data = $('#form-signin').serialize();
		$.post("<?php echo base_url() . 'auth/login_attempt'; ?>", data).done(function(data) {
			if (data.status == "success") {
				window.location.replace("<?php echo base_url(); ?>");
			} else {
				$('#sign-in').html("Login").attr('disabled', false);
				$('.validation-message').html('');
				$('.validation-message').each(function() {
					for (var key in data) {
						if ($(this).attr('data-field') == key) {
							$(this).html(data[key]);
						}
					}
				});
			}
		});
	}
</script>