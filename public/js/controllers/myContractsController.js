(function () {

    var injectParams = ['$scope', '$rootScope', '$location', '$routeParams', 'tokenService', 'contractService',
        'contactService', 'walletService'];

    var MyContractsController = function ($scope, $rootScope, $location, $routeParams, tokenService, contractService,
                                        contactService) {
        $scope.contacts = null;
        $scope.savedContracts = null;

        function init() {
            var context = tokenService.getContext();

            if(context == null || context == '') {
                $location.path('/login');
            }else {
                loadData();
            }
        }

        function loadData() {
            //populate lists
            $scope.contacts = contactService.getContacts();
            $scope.savedContracts = contractService.getSavedContracts();
            $scope.submittedContracts = contractService.getSubmittedContracts();
        }

        init();
    };

    MyContractsController.$inject = injectParams;

    angular.module('superCrow').controller('MyContractsController', MyContractsController);

}());