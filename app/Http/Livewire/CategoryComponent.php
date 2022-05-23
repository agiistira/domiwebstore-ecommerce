<?php

namespace App\Http\Livewire;

use App\Models\Product;
use App\Models\Category;
use Livewire\Component;
use livewire\WithPagination;
use Cart;

class CategoryComponent extends Component
{
    use WithPagination;
    
    public $sorting;
    public $pagesize;
    public $category_slug;

    public function mount($category_slug)
    {
        $this->sorting = "degault";
        $this->pagesize = 12;
        $this->category_slug = $category_slug;
    }

    public function store($product_id,$product_name,$product_price)
    {
        //add is a function take 4 parameter id, name,quantity and price
        Cart::add($product_id,$product_name,1,$product_price)->associate('App\Models\product');
        session()->flash('success_message','Item added in Cart');
        return redirect()->route('product.cart');
    }
    public function render()
    {
        $category=Category::where('slug',$this->category_slug)->first();
        $category_id=$category->id;
        $category_name=$category->name;
        if($this->sorting=='date')
        {
            $products = Product::where('category_id',$category_id)->orderBy('created_at','DESC')->paginate($this->pagesize);
        }
        elseif($this->sorting=='price')
        {
            $products = Product::where('category_id',$category_id)->orderBy('regular_price','ASC')->paginate($this->pagesize);
        }
        elseif($this->sorting=='price-desc')
        {
            $products = Product::where('category_id',$category_id)->orderBy('regular_price','DESC')->paginate($this->pagesize);
        }
        else
        {
            $products = Product::where('category_id',$category_id)->paginate($this->pagesize);
        }
        $categories=Category::all();
        return view('livewire.category-component',['products'=>$products,'categories'=>$categories,'category_name'=>$category_name])->layout("layouts.base");
    }
}

