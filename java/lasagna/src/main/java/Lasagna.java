public class Lasagna {
    private int expectedMinutesInOven = 40,
                prepTimePerLayer = 2;
    
    /**
     * Get expected amount of minutes in the oven.
     * @return expected minutes.
     */
    public int expectedMinutesInOven(){
        return expectedMinutesInOven;
    }
    
    /**
     * Calculate remaining minutes in the oven.
     * @param elapsedMinutes time already in the oven.
     * @return remaining time in the oven.
     */
    public int remainingMinutesInOven(int elapsedMinutes){
        return expectedMinutesInOven - elapsedMinutes;
    }

    /**
     * Calculate preparation time for a given number of
     * layers.
     * @param layers number of layers.
     * @return preparation time in minutes.
     */
    public int preparationTimeInMinutes(int layers){
        return prepTimePerLayer * layers;
    }

    /**
     * Calculate total time given a number of layers and
     * elapsed minutes in the oven.
     * @param layers number of layers.
     * @param elapsedMinutes minutes in the oven.
     * @return Total time taken.
     */
    public int totalTimeInMinutes(int layers, int elapsedMinutes){
        return preparationTimeInMinutes(layers) + elapsedMinutes;
    }
}