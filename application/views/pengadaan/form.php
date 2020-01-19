<div class="breadcrumb">
    <a href="">Home</a>
    <a href="">Pembelian Form</a>
</div>
<div class="content">
    <div class="panel">
        <div class="content-header no-mg-top">
            <i class="fa fa-newspaper-o"></i>
            <div class="content-header-title">Pembelian Form</div>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="content-box">
                    <form id="form-action">
                        <input type="text" name="id" class="hidden">
                        <div class="form-group">
                            <label for="email">No Surat</label>
                            <input id="no_pembelian" type="text" class="form-control" value="<?= time() ?>" name="no_pembelian" readonly>
                            <div class="validation-message" data-field="no_pembelian"></div>
                        </div>
                        <div class="form-group">
                            <label for="name">Vendor</label>
                            <select name="vendor_id" id="vendor_id" class="form-control select2">
                                <option value=""></option>
                                <?php foreach ($vendor as $key => $v) { ?>
                                    <option value="<?= $v->id ?>"><?= $v->kode . " - " . $v->nama ?></option>
                                <?php } ?>
                            </select>
                            <div class="validation-message" data-field="vendor_id"></div>
                        </div>
                        <div class="form-group">
                            <label for="name">Material</label>
                            <select name="material_id" id="material_id" class="form-control select2">
                                <option value=""></option>
                                <?php foreach ($material as $key => $m) { ?>
                                    <option value="<?= $m->id ?>"><?= $m->kode . " - " . $m->nama ?></option>
                                <?php } ?>
                            </select>
                            <div class="validation-message" data-field="material_id"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Tanggal</label>
                            <input id="tgl_beli" type="date" class="form-control" name="tgl_beli" value="<?= set_value('tgl_beli'); ?>" required autofocus>
                            <div class="validation-message" data-field="tgl_beli"></div>
                        </div>
                        <!-- <div class="form-group">
                            <label for="email">Harga / Unit</label>
                            <input name="harga_" id="harga_" class="form-control" type="number">
                            <div class="validation-message" data-field="harga_"></div>
                        </div> -->
                        <div class="form-group">
                            <label for="email">Quantity</label>
                            <input name="qty" id="qty" class="form-control" type="text" readonly>
                            <div class="validation-message" data-field="qty"></div>
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
            url: "<?php echo base_url() . 'pengadaan/validate'; ?>",
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
        $.post("<?php echo base_url() . 'pengadaan/action'; ?>", formData).done(function(data) {
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