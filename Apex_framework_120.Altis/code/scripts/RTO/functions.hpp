class RTO {
    tag = "RTO";
    file = "code\scripts\RTO\functions";
	class Objects {
		class init { description = "Start service"; };
		class add { description = "Register a object"; };
		class resetMcd { description = "Recalculate MCD check time"; };
		class remove { description = "Remove object from pool"; };
		class mcd { description = "Calculate MCD for two numbers"; };
		class check { description = "Check objects list"; };
		class set { description = "Alias of add"; };
	};
};