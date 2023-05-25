Bird f1 = new Bird();
f1.Fly();

Plane f2 = new Plane();
f2.fly();

List<Flyable> flyingThings = new List<Flyable>();
flyingThings.add(f1);
flyingThings.add(f2);
//flyingThings.add(new Bird ());
for(Flyable each : flyingThings) {
    each.fly();
    System.debug('Current value : ' + each);
}

