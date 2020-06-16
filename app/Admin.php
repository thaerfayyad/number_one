<?php

namespace App;

use App\Models\Permission;
use App\Models\UserPermission;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Admin extends Authenticatable
{
    use Notifiable;


    protected $fillable = [
        'name', 'email', 'password', 'mobile', 'image','type'];
        
        
        protected $appends = [
        'admin_type'];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token', 'created_at', 'updated_at', 'deleted_at'
    ];

    public function getImageAttribute($value)
    {
        if ($value != null)
            return url('uploads/admins/'.$value);
        return "";
    }
    
    public function getAdminTypeAttribute($value)
    {
        return "superadmin";
    }


  /*  public function permission()
    {
        return $this->belongsToMany(Permission::class,'user_permissions','user_id','permission_id');
    }*/

    public function permission()
    {
        return $this->hasOne(UserPermission::class,'user_id');
    }
}
