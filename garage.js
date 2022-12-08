'use strict';

//Import database data
const mysql = require('./src/mysql');

//Open hours
const open_time = 21600000; //Open time is 6AM
const close_time = 79200000; //Close time is 22PM

//Local time
var now = new Date().getTime();

//Verification of opening hours
if (open_time > now && now < close_time)
{
    console.log("Garage is close");
}
else
{
    console.log("Free passage.");
}

//Passing of parking places
async function main()
{
    const vehicle = await mysql.getData();
    const parkingPlace = 7;
    if (vehicle.length > 0)
    {
        if (vehicle.length === parkingPlace)
        {
            console.log("Count of places is correct.");
        }
        else
        {
            console.log("Incorrect count of places in the garage.")
        }
    }
    else
    {
        console.log("Parking places are empty.");
    }
}

main();