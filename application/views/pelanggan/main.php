<!-- Table -->
<section class="datagrid-panel">
    <div class="breadcrumb">
        <a href="">Home</a>
        <a href="">Pelanggan</a>
    </div>
    <div class="content">
        <div class="panel">
            <div class="content-header no-mg-top">
                <i class="fa fa-newspaper-o"></i>
                <div class="content-header-title">Pelanggan</div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="content-box">
                        <div class="content-box-header">
                            <div class="row">
                                <div class="col-md-6">
                                    <button class="btn btn-primary" onclick="main_routes('create', '')"><i class="fa fa-pencil-alt"></i> Add New Pelanggan</button>
                                </div>
                                <!-- <div class="col-md-6 form-inline justify-content-end">
                                    <select class="form-control mb-1 mr-sm-1 mb-sm-0" id="search-option"></select>
                                    <input class="form-control" id="search" placeholder="Search" type="text">
                                </div> -->
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered" id="datagrid">
                                <thead>
                                    <tr>
                                        <th class="text-center">No</th>
                                        <th class="text-center">Nama</th>
                                        <th class="text-center">NO HP</th>
                                        <th class="text-center">Alamat</th>
                                        <th class="text-center">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no = 1; ?>
                                    <?php foreach ($pelanggan as $pro) { ?>
                                        <tr>
                                            <td class="text-center"><?= $no++ ?></td>
                                            <td><?= $pro['nama'] ?></td>
                                            <td><?= $pro['no_hp'] ?></td>
                                            <td><?= $pro['alamat'] ?></td>
                                            <td class="text-center">
                                                <a href="#" data-id="<?= $pro['id']; ?>" data-target="#modal-mesin" data-link="updateMesin" data-toggle="modal" class="btn-edit"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                <a href="javascript:;" onclick="delete_action(<?= $pro['id'] ?>)"><i class="fa fa-trash-alt"></i> Delete</a>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="content-box-footer">
                            <div class="row">
                                <!-- <div class="col-md-3 form-inline">
                                    <select class="form-control" id="option"></select>
                                </div>
                                <div class="col-md-3 form-inline" id="info"></div>
                                <div class="col-md-6">
                                    <ul class="pagination pull-right" id="paging"></ul>
                                </div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Form -->
<section class="form-panel"></section>

<script type="text/javascript">
    // var datagrid = $("#datagrid").datagrid({
    //     url: "<?php echo base_url() . 'product/data'; ?>",
    //     primaryField: 'id',
    //     rowNumber: true,
    //     searchInputElement: '#search',
    //     searchFieldElement: '#search-option',
    //     pagingElement: '#paging',
    //     optionPagingElement: '#option',
    //     pageInfoElement: '#info',
    //     columns: [{
    //             field: 'product_name',
    //             title: 'Product Name',
    //             editable: true,
    //             sortable: true,
    //             width: 450,
    //             align: 'left',
    //             search: true
    //         },
    //         {
    //             field: 'price_formatted',
    //             title: 'Price',
    //             sortable: false,
    //             width: 100,
    //             align: 'center',
    //             search: false,
    //             rowStyler: function(rowData, rowIndex) {
    //                 return '<span class="badge badge-yellow">$' + rowData.price + '</span>';
    //             }
    //         },
    //         {
    //             field: 'stock',
    //             title: 'Stock',
    //             editable: true,
    //             sortable: true,
    //             width: 100,
    //             align: 'center',
    //             search: true
    //         },
    //         {
    //             field: 'menu',
    //             title: 'Menu',
    //             sortable: false,
    //             width: 200,
    //             align: 'center',
    //             search: false,
    //             rowStyler: function(rowData, rowIndex) {
    //                 return menu(rowData, rowIndex);
    //             }
    //         }
    //     ]
    // });

    // datagrid.run();

    function menu(rowData, rowIndex) {
        var menu = '<a href="javascript:;" onclick="main_routes(\'update\', ' + rowIndex + ')"><i class="fa fa-pencil"></i> Edit</a> ' +
            '<a href="javascript:;" onclick="delete_action(' + rowIndex + ')"><i class="fa fa-trash-o"></i> Delete</a>'
        return menu;
    }

    function create_update_form(rowIndex) {
        $.post("<?php echo base_url() . 'pelanggan/form'; ?>", {
            index: rowIndex
        }).done(function(data) {
            $('.form-panel').html(data);
        });
    }

    function delete_action(rowIndex) {
        swal({
            title: "Are you sure want to delete this data?",
            text: "Deleted data can not be restored!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            cancelButtonText: "Cancel",
            confirmButtonText: "Hapus",
            closeOnConfirm: true
        }, function() {
            var row = datagrid.getRowData(rowIndex);
            $.post("<?php echo base_url() . 'project/delete'; ?>", {
                id: row.id
            }).done(function(data) {
                datagrid.reload();
            });
        });
    }

    function main_routes(action, rowIndex) {
        $('.datagrid-panel').fadeOut();
        $('.loading-panel').fadeIn();

        if (action == 'create') {
            create_update_form(rowIndex);
        } else if (action == 'update') {
            create_update_form(rowIndex);
        }
    }
</script>