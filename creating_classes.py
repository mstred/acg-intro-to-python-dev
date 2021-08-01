class Car:
    """
    Car models a car w/ tires and an engine
    """

    def __init__(self, engine, tires):
        self.engine = engine
        self.tires = tires


    def description(self):
        print(f"engine: {self.engine}\ntires: {self.tires}")


    def wheel_circumference(self):
        return self.tires[0].circumference() if len(self.tires) > 0 else 0
