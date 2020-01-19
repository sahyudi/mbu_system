<div class="breadcrumb">
    <a href="">Home</a>
    <a href="">Material Form</a>
</div>
<div class="content">
    <div class="panel">
        <div class="content-header no-mg-top">
            <i class="fa fa-newspaper-o"></i>
            <div class="content-header-title">Material Form</div>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="content-box">
                    <form id="form-action">
                        <input type="text" name="id" class="hidden">
                        <div class="form-group">
                            <label for="name">Kode</label>
                            <input id="kode" type="text" class="form-control" name="kode">
                            <div class="validation-message" data-field="kode"></div>
                        </div>
                        <div class="form-group">
                            <label for="name">Nama</label>
                            <input id="nama" type="text" class="form-control" name="nama">
                            <div class="validation-message" data-field="nama"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Jumlah</label>
                            <input id="jumlah" type="text" class="form-control" name="jumlah" value="0" readonly>
                            <div class="validation-message" data-field="jumlah"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Satuan</label>
                            <input id="satuan" type="text" class="form-control" name="satuan">
                            <div class="validation-message" data-field="satuan"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Harga / Satuan</label>
                            <input id="harga_unit" type="text" class="form-control" name="harga_unit">
                            <div class="validation-message" data-field="harga_unit"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Deksripsi</label>
                            <input id="ukuran" type="text" class="form-control" name="ukuran">
                            <div class="validation-message" data-field="ukuran"></div>
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

        if (index != '') {
            datagrid.formLoad('#form-action', index);
        }

        $('.loading-panel').hide();
        $('.form-panel').show();
    })();

    function validate(formData) {
        var returnData;
        $('#form-action').disable([".action"]);
        $("button[title='save']").html("Validating data, please wait...");
        $.ajax({
            url: "<?php echo base_url() . 'material/validate'; ?>",
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
        $.post("<?php echo base_url() . 'material/action'; ?>", formData).done(function(data) {
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