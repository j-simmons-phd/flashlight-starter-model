requirement physical {
    requirement portability;
    requirement size {
        doc /* The flashlight shall be less than 6 inches in length. */
    }

    // the following is a more precisely specified requirement using constraints
    requirement weight {
        doc /* The weight shall be less than 0.25 lbs. */
        attribute actualWeight :> ISQ::mass;
        require constraint { actualWeight <= 0.25 [lb] }
    }
}