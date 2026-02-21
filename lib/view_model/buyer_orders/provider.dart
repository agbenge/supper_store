import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class BuyerOrdersViewModel extends _$BuyerOrdersViewModel {
  @override
  BuyerOrdersViewModelState build() {
    return const BuyerOrdersViewModelState(
      activeOrders: [
        BuyerOrder(
          shopName: 'GreenLeaf Groceries',
          orderId: 'ORD-8821',
          status: 'Ready for Pickup',
          imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuCTlANPe4j2rgTFCZV2hFT_M6LJPQoG4YW_6KkY5vZ-WYLIrjhAbJRkB0-u-QZyM4Nf5VirATX0c27AInOJlxGKKgjhxkQOthYcnJspK5HBiAcDL-Q0d4mMKSGFxOZD7MAEb8cMwFsqKKzDdCdtxhOQI-RKIpQbrCaxRcgqqefRQYgPKkeBw2w-sExYe3Yfv-ZD6aLvC6v8o9qGOElkwKS4x6i1_TmpXioWxguAZIX84F43Hw9Q52-brAG70dCT7H6gPvoysZk-gZo',
          price: '\$42.50',
          progress: 1.0,
          steps: ['Placed', 'Packing', 'Ready'],
          currentStep: 2,
        ),
        BuyerOrder(
          shopName: 'TechHaven',
          orderId: 'ORD-7742',
          status: 'Packing',
          imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuBO8nljuQbItub9YC_fezTmN7jY5gHGYA3WMm2s-8461tkWCpIFCfgqDabIAkC1LEt6NWOoMMzUa_1E0slbj88UCehTGtJa2MLXX40vNqsKkHB8tVRlF9f20APiKwxp8yeaP9SHAM_BfdsWSe01nZVGMG0q6bbCs-yT7X8-s59N-5Tcr9YhnCaG9LQEoX6y8mycCkvTX3SVd4KfVcDZQ4gAjGOYHK2Cp3Tkim8b7DFdDGtOIBrQ9IKPhVO_eJU1nUm7inzvky94dcE',
          price: '\$199.99',
          progress: 0.66,
          steps: ['Placed', 'Packing', 'Ready'],
          currentStep: 1,
        ),
        BuyerOrder(
          shopName: 'Urban Kicks',
          orderId: 'ORD-5521',
          status: 'Pending Approval',
          imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuAZD2-pWYhU3uNmuroUdwEtqZ4yGSchXz4wHeDzEATZNB5XLhzhnl-yvWlG_lETlnqgT71M_QzfzsT9GKfc_wMrlUcKfk0c42fRczOXJjdPV8KelqLptempeGL6Pu58ITwFI_KktBkhJ99gx7mybqZIYD7dQvVtjymENhBmjI03e9kfw6f3FQy_uzhuBWqPp3GBpQUK5jZFccERrtiaRIk7fAB_VuwEHXufMMcox76F1Ii6_BROfCOu4OtD65c3L5bCrIJmbtnzD9I',
          price: '\$89.50',
          progress: 0.33,
          steps: ['Placed', 'Packing', 'Ready'],
          currentStep: 0,
          hasActions: true,
        ),
        BuyerOrder(
          shopName: 'Artisan Bakery',
          orderId: 'ORD-9912',
          status: 'Placed',
          imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuBu11feFzJRpMUQvjxD3Eaeu_WMmHfijSn3QqyQEZ5UAJRBPzTkdk2RGJF6uSRua2FtogTPaVdp3iKyuN068yA3og-geJ-40usdU_YWYCdyY2SEp6tMhr7BxZI5_VWByfDg7jhaRgpG465U1KX384DxtVdr1qckoQyAd2jXEF3NAgQDco_VmVMs5CGSj_jO2vNNRbrkPeMJ4ZFOTYIM5u5YZAHeCY5RYJcwnYQM9sUx-ApFFbV9EiNteLtV4c93YppD7Oiu0-MbZ0Q',
          price: '\$18.25',
          progress: 0.15,
          steps: ['Placed', 'Packing', 'Ready'],
          currentStep: 0,
          hasActions: true,
        ),
      ],
      pastOrders: [],
    );
  }

  void setTabIndex(int index) {
    state = state.copyWith(selectedTabIndex: index);
  }
}
