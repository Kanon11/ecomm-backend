<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Symfony\Component\Console\Input\Input;
use Illuminate\Support\Facades\Log;

class ProductController extends Controller
{
    public function addProduct(Request $req){
        $objProduct=new Product();
        $objProduct->name=$req->input('name');
        $objProduct->file_path=$req->file('file')->store('products');
        $objProduct->description=$req->input('description');
        $objProduct->price=$req->input('price');
        $objProduct->save();
        return $objProduct;
    }
    public function list(Request $req)
    {
        return Product::all();
    }
    public function delete($id)
    {
        $result=Product::where('id',$id)->delete();
        if($result){
            return response(['result'=>'product  has been deleted']);

        }
        else{
            return response(['result' => 'delete operation failed']);
        }
    }
    public function getproduct($id)
    {
        $singleproduct=Product::where('id',$id)->first();
        return $singleproduct;
    }
    public function updateproduct($id,Request $req)
    {
        $product=Product::find($id);
        $product->name=$req->input("name");
        if ($req->file("file")) {
            $product->file_path = $req->file("file")->store('products');
        }
        $product->description=$req->input("description");
        $product->price=$req->input("price");
        $product->save();
        return $product;
        // $file_path = $req->file('file')->store('products');
        // Log::channel('daily_log')->info('id: '.$req->input('id'));
        // return 1;
        // Log::channel('daily_log')->info('id: ' . $req->input('id').'||name'.$req->input('name') . 
        // '||file_pathe' . $file_path . '||description' . $req->input('description') . '||price' . $req->input('price'));

        // $product_update=Product::where('id', $req->input('id'))->update(["name"=> $req->input("name"),
        //     "description" => $req->input("description"), "price" => $req->input("price")]);
        //  return response($product_update);
    }
    public function search($key)
    {
        // return $key;
       return Product::where('name','LIKE','%'.$key.'%')->get();
    }
}
