class RemoveSshKeysUserOpGroup < PendingUserOpGroup

  field :keys_attrs, type: Array, default: []

  def elaborate(user)
    pending_ops.push RemoveSshKeysUserOp.new(keys_attrs: keys_attrs)
  end

end
