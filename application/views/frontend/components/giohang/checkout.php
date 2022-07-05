<?php echo form_open('checkout'); ?>
<?php  
    if(!$this->session->userdata('cart'))
    {
        redirect('gio-hang');
    }
?>

<style>
    table{
        background-color: white
    }
    td, th{
        padding: 10px;
        border: 1px solid #4d5b7c
    }
</style>
<section id="checkout-cart">
    <div class="container">
        <br>

        <div class="col-md-12">
            <div class="wrapper overflow-hidden">

                <div class="checkout-header _block bg-pri hidden-xs">
                    <div class="checkout-header _container">
                        <a href="#" class="checkout-header _logo">
                            <!-- <h1 class="color-fff">24hStore</h1> -->
                        </a>
                        <div class="checkout-header _progress-bar">
                            <ol class="step-breadcrumb _list">
                                <li class="step-breadcrumb _item -current">
                                    <span class="step-breadcrumb _text">Cửa hàng</span>
                                </li>
                                <li class="step-breadcrumb _item">
                                    <span class="step-breadcrumb _text">Địa chỉ</span>
                                </li>
                                <li class="step-breadcrumb _item">
                                    <span class="step-breadcrumb _text">Kết quả</span>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>

                <div class="checkout-content row">

                    <div class="col-xs-12 col-sm-12 col-md-6 col-login-checkout" style="margin-bottom: 20px">
                        <p class="text-center"><a href="dang-nhap" style="color: blue">Đăng nhập</a> hoặc đặt hàng không cần đăng ký</p>
                        <div class="wrap-info" style="width: 100%; min-height: 1px; overflow: hidden; padding-top: 40px;">
                            <div class="cell-30 pull-left hidden-xs" style="min-height: 1px;"></div>
                            <div class="col-xs-12 col-sm-12 cell-40  pull-left left-panel-info-cart">
                                <form action="" method="POST" role="form" class="form-info-cus">
                                    <div class="form-group">
                                      <input type="text" class="form-control" name="email" required placeholder="Vui lòng nhập email">
                                    </div>
                                    <div class="form-group color-primary" style="color: #333; font-size: 14px; font-weight: 600;">
                                      <input type="radio" name="gender" value="1" checked="true" style="margin-bottom: 15px;"> Đặt hàng không cần tài khoản<br>
                                      <input type="radio" name="gender" value="0" id="yesCheck" onclick="window.location.href='dang-nhap'"> Tôi đã có tài khoản<br>
                                    </div>
                                    <div class="btn-checkout frame-100-1 overflow-hidden border-pri">
                                      <button type="submit" class="pull-left bg-pri border-pri col-fff" style="color:white;border:none;background: #F98017;padding:5px 8px;width:150px;">Tiếp tục</button>
                                    </div>
                                </form>
                            </div>
                            <div class="cell-30 pull-left hidden-xs" style="min-height: 1px;"></div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-6 products-detail">
                        <div class="no-margin-table" style="width: 95%; float: right;">
                            <table class="table" style="color: #333">
                                <thead>
                                    <tr>
                                        <th colspan="3" style="font-weight: 600;">Thông tin đơn hàng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="background: #fafafa; color: #333;" class="text-transform font-weight-600">
                                        <td>Sản phẩm</td>
                                        <td class="text-center">Số lượng</td>
                                        <td class="text-center">Đơn giá</td>
                                    </tr>
                                    <?php if($this->session->userdata('cart')):
                                        $data=array_filter($this->session->userdata('cart'));
                                        $money=0;
                                        foreach ($data as $key => $value) :
                                            $row = $this->Mproduct->product_detail_id($key);?>
                                            <tr>
                                                <td><?php echo $row['name']; ?></td>
                                                <td class="text-center"><?php echo $value['qty'] ?></td>
                                                <td class="text-center">    
                                                    <?php 
                                                        $total=0;
                                                        if($value['option'] == 1){
                                                            if($row['price_sale'] > 0){
                                                                $total=$row['price_sale']*$value['qty'];
                                                            }else{
                                                                $total=$row['price'] * $value['qty'];
                                                            }
                                                            $money+=$total;
                                                            echo number_format($total).' VNĐ';
                                                        }

                                                        if($value['option'] == 2){
                                                            if($row['price_sale1'] > 0){
                                                                $total=$row['price_sale1']*$value['qty'];
                                                            }else{
                                                                $total=$row['price1'] * $value['qty'];
                                                            }
                                                            $money+=$total;
                                                            echo number_format($total).' VNĐ';
                                                        }

                                                        if($value['option'] == 3){
                                                            if($row['price_sale2'] > 0){
                                                                $total=$row['price_sale2']*$value['qty'];
                                                            }else{
                                                                $total=$row['price2'] * $value['qty'];
                                                            }
                                                            $money+=$total;
                                                            echo number_format($total).' VNĐ';
                                                        }
                                                        
                                                    ?>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                    <tr style="background: #fafafa">
                                        <td colspan="2">Tạm tính</td>
                                        <td class="text-center"><?php echo number_format($money).' VNĐ'; ?></td>
                                    </tr>
                                    <tr style="background: #fafafa">
                                        <td colspan="2" class="font-weight-600">Thành tiền<br/><span style="font-weight: 100; font-style: italic;">(Tổng số tiền thanh toán)</span></td>
                                        <td class="text-center"><?php echo number_format($money).' VNĐ'; ?></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
