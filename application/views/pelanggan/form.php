<div class="breadcrumb">
    <a href="">Home</a>
    <a href="">Pelanggan Form</a>
</div>
<div class="content">
    <div class="panel">
        <div class="content-header no-mg-top">
            <i class="fa fa-newspaper-o"></i>
            <div class="content-header-title">Pelanggan Form</div>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="content-box">
                    <form id="form-action">
                        <input type="text" name="id" class="hidden">
                        <div class="form-group">
                            <label for="email">Nama</label>
                            <input id="nama" type="text" class="form-control" name="nama">
                            <div class="validation-message" data-field="nama"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">NO HP</label>
                            <input id="no_hp" type="text" class="form-control" name="no_hp">
                            <div class="validation-message" data-field="no_hp"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Alamat</label>
                            <textarea name="alamat" id="alamat" class="form-control" cols="30" rows="10"></textarea>
                            <!-- <input id="no_hp" type="text" class="form-control" name="no_hp"> -->
                            <div class="validation-message" data-field="alamat"></div>
                        </div>
                    </form>
                    <div class="content-box-footer">
                        <button type="button" class="btn btn-danger action" title="cancel" onclick="form_routes('cancel')">Cancel</button>
                        <button type="button" class="btn btn-primary float-right action" title="save" onclick="form_routes('save')">Save</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</div>

<script type="text/javascript">
    var onLoad = (function() {
        var index = "<?php echo $index; ?>";

        var uploader = $('.picker-uploader').uploader({
            upload_url: '<?php echo base_url() . 'uploader/upload'; ?>',
            file_picker_url: '<?php echo base_url() . 'uploader/files'; ?>',
            input_name: 'images',
            maximum_total_files: 4,
            maximum_file_size: 50009000,
            file_types_allowed: ['image/jpeg', 'image/png', 'image/vnd.adobe.photoshop'],
            on_error: function(err) {
                swal({
                    title: "Upload Failed",
                    text: err.messages,
                    type: "warning"
                })
            }
        })

        if (index != '') {
            datagrid.formLoad('#form-action', index);
            uploader.set_files(datagrid.getRowData(index).images)
        }

        $('.loading-panel').hide();
        $('.form-panel').show();
    })();

    function validate(formData) {
        var returnData;
        $('#form-action').disable([".action"]);
        $("button[title='save']").html("Validating data, please wait...");
        $.ajax({
            url: "<?php echo base_url() . 'product/validate'; ?>",
            async: false,
            type: 'POST',
            data: formData,
            success: function(data, textStatus, jqXHR) {
                returnData = data;
            }
        });

        $('#form-action').enable([".action"]);
        $("button[title='save']").html("Save changes");
        if (returnData != 'success') {
            $('#form-action').enable([".action"]);
            $("button[title='save']").html("Save changes");
            $('.validation-message').html('');
            $('.validation-message').each(function() {
                for (var key in returnData) {
                    if ($(this).attr('data-field') == key) {
                        $(this).html(returnData[key]);
                    }
                }
            });
        } else {
            return 'success';
        }
    }

    function save(formData) {
        $("button[title='save']").html("Saving data, please wait...");
        $.post("<?php echo base_url() . 'product/action'; ?>", formData).done(function(data) {
            $('.datagrid-panel').fadeIn();
            $('.form-panel').fadeOut();
            datagrid.reload();
        });
    }

    function cancel() {
        $('.datagrid-panel').fadeIn();
        $('.form-panel').fadeOut();
    }

    function form_routes(action) {
        if (action == 'save') {
            var formData = $('#form-action').serialize();
            if (validate(formData) == 'success') {
                swal({
                    title: "Please check your data",
                    text: "Saved data can not be restored",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    cancelButtonText: "Cancel",
                    confirmButtonText: "Save",
                    closeOnConfirm: true
                }, function() {
                    save(formData);
                });
            }
        } else {
            cancel();
        }
    }
</script>