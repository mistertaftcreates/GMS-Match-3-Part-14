/// @description State Machine
switch(state){
	case "Fill":
	
	break;
	
	case "Wait":
	
	break;
	
	case "Destroy":
	alarm[0] = 20;
	state = "Refill";
	break;
	
	case "Refill":
	
	break;
	
	default:
	break;
}