shared_context :init_importing_dialpeer do |args|

  args ||= {}

  before do
    fields = {
        enabled: true,
        prefix: '34918051239',
        src_rewrite_rule: '',
        dst_rewrite_rule: '',
        acd_limit: 0.0,
        asr_limit: 0.0,
        routing_group_id: @routing_group.id,
        routing_group_name: @routing_group.name,
        next_rate: 0.0092,
        connect_fee: 0.0,
        vendor_id: @contractor.id,
        vendor_name: @contractor.name,
        account_id: @account.id,
        gateway_id: @gateway.id,
        gateway_name: @gateway.name,
        account_name: @account.name,
        src_rewrite_result: '',
        dst_rewrite_result: '',
        locked: false,
        priority: 105,
        capacity: 0,
        lcr_rate_multiplier: 1.0,
        initial_rate: 0.0092,
        initial_interval: 1,
        next_interval: 1
    }.merge(args)

    @importing_dialpeer = FactoryGirl.create(:importing_dialpeer, fields)
  end

end