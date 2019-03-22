package src.OO;

public class Application {
	public static void main(String[] args) {
		Carro carro = new Carro();
		carro.setModelo("Celta");
		carro.setMarca("Chevrolet");
		carro.setRodas(4);
		imprimirCarro(carro);
	}

	private static void imprimirCarro(Carro carro) {
		System.out.println("Carro modelo " + carro.getModelo() + ", da marca " + carro.getMarca() + " e possui " + carro.getRodas() + " rodas.");
	}
}
