angular.module('jsworkshop', [
	'ngRoute'
	]).config([
		'$routeProvider'
		'$locationProvider'
		( $rp, $lp ) ->

			$rp
				.when '/',
					templateUrl: '/partials/home.html'
					controller: 'HomeCtrl'

				.when '/user/:email',
					templateUrl: '/partials/profile.html'
					controller: 'ProfileCtrl'

				.otherwise
					redirectTo: '/'

			$lp.html5Mode( true )
			$lp.hashPrefix( '!' )

			return
])
