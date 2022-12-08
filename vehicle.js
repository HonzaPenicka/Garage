'use strict';

//Import database data
const mysql = require('./src/mysql');

async function main()
{
    try 
    {
        const vehicle = await mysql.getData();
        if(!vehicle.length)
        {
            throw err;
        }

//Passes how many vehicles are in the field
        if (vehicle.length > 0 && vehicle.length < 1)
        {
            console.log("There is " + vehicle.length + " car that can drive into the garage.");
        }
        else
        {
            console.log("There are " + vehicle.length +  " cars that can drive into the garage.");
        }
    }
    catch(err)
    {
        console.log("Error in the database");
        console.log(err);
    }
}

main();