import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  final List<String> carouselImages = [
    'data:image/jpeg;base64,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',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcySDpmJR45_Z8V5_XkQhHgGOt8NNter9r3R6IkAUEWxbwJMGSLor8e0rso-mwdeEfQP0&usqp=CAU',
    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEBUTEhMTFRUVFRcXFxYSFhUXFRgTFRgWFhkXFxUYHSggGBolGxYVITEhJykrLi4uGB8zODMsNygtLisBCgoKDg0OFxAQGysdHR4tLSstLS0rKy0tLS0tKy0tLS0tLSstLS0tLS0rLSstLTctLSsrLS0tLS0tLS03Ky0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABAUDBgcCAQj/xABEEAACAQICBgcEBgcHBQAAAAAAAQIDEQQhBRIxQVFxBgcTImGBwTKRobFykrLR4fAjM0JSU2KCFBZjoqPC8Rckc9Li/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAECAwT/xAAeEQEBAAICAwEBAAAAAAAAAAAAAQIRAzESEyFBMv/aAAwDAQACEQMRAD8A7iAAAAAAAAAUmM013nGGxOzfFrbbwJbIsm12DXXpGb3v3sxVNIPK7yv6GPZGvCtnBrcMUuC9yMyxH5Q9h4L4FAse+Ly8Xz+RljjXxfvZfM8F0CmnjWs7v3syU8e+N+Y84nhVqCPh8UpZbGSDUu2bNAAKAAAAAAAAAAAAAAAAAAAAACPpHEdnRnP92En5pZfE0bCs2jpbV1cM1+9KEf8AMpP4RZquCOPJfsdePpa0CFpqLSTim+9nbdtz5X+aJVJmeLTvfY8vLec9NqvCVnvv5lhGTtkYVC1092x8U9nnu8jJGdiiFOvJVJKz3fJE2hUFSN4p71nzW1r1Pqa2liVlrwbi7Py8TDg5O/e28BOpsXn9w189b38vwIqxjLgXWGq60U/fzKCnIsdF1e848czphfrnlFmADq5gAAAAAAAAAAAAAAAAAAAADWemk79jDxlP3LVX22U9Gi9qRN6V1r4qMf3Ka985P0gjxgpnDP7k7YdIzxFnbf6k6hLIj6QwkXJTV03k7eGzzJGHgktrMRqseKdrPhk+T/G3xMMZ3fLMmVKCkmuKt7yDh8O0lnfyKM6k+DMEq6jlu2rlw9/oTqSI+kcLGST3p7nuf5RRghUuSaTIcKdiwwqQKwU8TZ6vDL8+Ra4OpaUZe8qK2ESqt3edn8LehZUdiEStmBhwdTWgn4W92RmPQ4AAAAAAAAAAAAAAAAAAAAADRNMzvi6r/mivKMI+rZkwrIWka18TVf8AiTX1Xq+hYYGqea/1XedR5xNbYvEzUZZHnG4LXacW1a90rZ3tsvvy+Jlw1Ky9q/u9ESK+65HhUyJk6Kaz+BCpYRp2d/R8mUZ4sx4l91+XwaZnp0TxjcM3BqLzexPjzCK91CTh5kGlg5/tNK21JPaWGFpJbcxFrBjK/f8AJfNkvC1bowYnAxlLWV+FuW9fcSMNRSWQiVd6Fq3Uo8pe/L/b8SzKLRM7Veaa+T9GXp3xvxyy7AAaZAAAAAAAAAAAAAAAAAABoWM0NU7ao4OElrykldptSk5WzVsm7XvY+0VKDtOLi/FbeT2MscU3Tk1vi8vz4r5kjDYynNKLSs1saW7auafoea9u8R6U8jy6mq7bnmvVfniZsRhNTOOcX8PwK7SEZKLks7Z5cN/wuS1YmwrXdvN+hlnK64cHwZTYOsyxje2Wf58SjIq+Xz5iNS75Zee8psdiZQnsa1uKftLL7jNhaza/5EppOxTt3uG36PHy28rkade1/hzJDTa3Mo6lOpGbi4tpbH4bvgLRdYeoZWytw0nwGlMaqdNyk7JK7vwWY2LPQNdOu28lBO8nkrtWS52byNlWLhxOa4THtK79pu75vd5ZLyLOlpPLNlx5NfEyw23pV4vej2madR0pwfn9xOo6SubnKxeNsgKmljnxJuExGs2ntVn5O/3M3MpWbjYkgA0yAAAAAAAAAAAAAKjT9BNKXl6r1NZqU0tmWd+UuPLc/wADcNLxvSfg193qariYHDk+Xbrh9ibo7Fa0XGW1ZNMxyjZuN/8AgrsHUamnxvH6tvRx9xNxs7SXijDb7GKaXI9wyIdOrt5v5npVi7EjExTS2ZSXxuvUxdlbYY69fuvwz92foeXXAlQlYxYmzd/D5flEeWIMVTE5rlL/AGgSYWW00rrBxGtDsoSacst+/Jb/ABLvG6QSTzNF0hie0xVNfzX+r3s/NIg2KFezSMsqzWdzHh2rZkmNvB/neYdGelXsiXhMU+NvzwK1HumrW/O0RK27A177PjmX+hVdSlxlZco5fO5qWjpWg5cFc3jBUdSnGPCKvz3v3no43DNnAB1cwAAAAAAAAAAAABHx8b0pcm/dmatXRt1aN4tcU/kalM48rpxqxu0nzUl9l/NPyJGlZ92L5+hHxce+rb0171l8bEqth41YxTk471a3A5Xp1napjidvP0R8eMJsujTt3ajzd80n8rEaXRep/EX1H/7GVYqmNvCWf7MvkzFLGmV9F6udqizTXsvf5ifReo9tVLlD/wCiiFPSS4kPE6UWWfH0LaPQpP26tR+EbRXqydR6JUIpLs1L6d5fauBz7SWlLraU2i66liL32Rfxa/E7B/dfD/waf1I/cYpdDsO3fsoJ8VFJ25oqNPw9dEqNVZGyS6G0v2brlKXqyJW6GzWdOr5TXqtnuM6a2rFMyxZJ/uxiuFN8pP1SI9fBVaTSqU5R4PJx+tG68hotbJoilr9nH96pFPlHvv4RN7NN6KwvVhl7MJy5ezFfaZuR6uPp58+wAG2AAAAAAAAAAAAAANVxlLVnKPB5ctxtRHxeDjUWaz3NbTGeO41jdNIxy9lrapL5ldgdJKdacErKhFasrvN97XTWy1oprk+JsOl9HShdPNPZJbPwZrOicI4Yis3sk4u/hJSv9o46/K67/Y2nD4xNLMkxxKNWw9dpK+X52EuOL8TLTYVXiz0pxKFYo9RxZdovU4n3LiU0cWZFiALXu8R3Sq/tA/tHiBaOaPPbIrniDFLEFFv26Pjq3KeOJDxlt9hs0uej+GSq1JLdGMLeblf4r3Mvim6NxbU5tWUmkr79W+fLP4FyejHpwy7AAVAAAAAAAAAAAAAAAKbpV0ipYHDutVzeyEF7U57orgt7e5AStOY6FGhKVTNO0IxS1pTqTerCEYrNycmkUmGxleNPslo2tJJZydTDRjJ8e9V1vetxz3oJpjF6R01CpVk3ClGdV09tKnHVlSgoReSnep7W2ylnmzthNfdrtodTQ2JqTbWGdFP96rTqZ/0tW53Z7l0YxC2Km/6vwN5BLhjVmVjRHoLExWcE/oyv6FNicZCn+sqU4fTq0o7cv2pLedUND61+i0MVh41YQp9vTqRfaSyl2ed46yWa2Oz4GfXivnVLQ0lTl7NSk/o1aL+Uy0wqqTWtCEpxexw1ZJ2dtqZ+dq+Ham+7vazP0Z1H109EQgnnTqVYyXDWm5r4SQ9UPZWZYKv/AAanuX3npaMxD2U2vpZG7gevE861ChoLEPaor+q/wJlLoy37dX6i+82MFmGKedU9Lo5RW3WfOTM9LQtGMrqEctmWwsQa1E3XxK2w+gFQAAAAAAAAAAAAAAAANf6Z9FaekKCpTlKEoS1oVI5uMrWd0/ai1tXI2AAal1e9Clo2FXWqqtUqyTc9TUtCCtGCV3sbk/6jbQAAAAHIOu/StalXoRp1Zwi6bk4xeTes1do6+cR6+n/3dBf4H++YHNsTRcqjUFrXeSjmdy6k9G1qODq9tSnT16mtDXWq2tW17POxQdRS/T4h/wCHD5/gdkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABrXTrpYtHUYVHBT156uctVKybvez4Erpf0gjgsLOt3XNWUIykopybtdttd1bX4I4T0l6dVMXKlCu4V4U6sarp06abkldSp6ySSg4uzd5PZwzDfMR1s1I7cKofTc184oj/wDVqtJXhRo2499pc3rZGtaa619J1rql2GDh/L+kq28ZSTS+qjVaejcTjZ67/teMm37Vqk438r296A3vGdc1WP8ABb4UoOfx1tX4nO+k2na2LqvEVasryVlFq+qs3ZbklnuNw0Z1WaQqL9TToJ76k1F28dTWl5Mp+lvQyvo7XjWcJRnRk4TpvJtyjdWeaa9V5BB6JdKMRgKqr06jnF2UoKOUlvi45e86PgeuipN2WHpTfCNRwl5Rnm/K5pnR3oFisfByoKkoQUO9Vk4qUtSPdjqxefOy8SNpjq6x1G/aYWo1+9SSqx59y7S52A6lT62nsngai+jUi/hqk2j1q0XtwuJXJQfqjhWBxuIw81qSUtV/q68Y1I8nCoslyaNlxPWD2mHnRlgsFQlODg6lKjZ3atrJp60PJSA7/oDTEMXQVanGcYttWqJKV4uzyTZZHPepzTVGeCWHUo9pSk8u0jJzU3rayWTWbas1lZcToQAAAAAAAAAAAAAAAAAAAADWenHTGlo6lGU85zbUI57tryzfJAVXTnrJp4Ct2CoTq1dVS9qMKaUr2vJ53y2WNMrdJdP4/LD0Z0IP+DT1f9evqrziVuguk1PH9IcPXrfo1eMY2yTqRjJQWq75Ntb/AHbv0ABwrD9UGPxE+0xVanGT/arTniKmfgrR/wAzJtXqXrqrCMMVSlRdu0lKMoST36lGHdfnNeds+0ADXtFdCNH4e3Z4WldftVI9pPnrTu15GwRikrJWXBH0ADlfX1hX/ZYVbqy1oW33kta/Lus6oc669YX0Ynwqr7FQCT1M4dx0apO1pzbXKKjHPzTN8NS6qqdtE4fxU3/qTNtAg6S0Ph8QrV6FKr/5IRk1ybV15HL9KdUE54uXZzowwsrtO9R1oX/Y1GnGaT2PWWXLPrwA4TpLqXxVPvYerSqNZrOVKd/C9156yMVDTundGZVo1Z01uxEXUhZblWi3b6x3sAcw0H1y4ado4qlOhL96P6Sn8O8vczoGidM4fEx1sPWp1V/JJNrmtq8yv0v0MwGJu6uGp6z2yguzm+coWb8zmfQSGHwGm8VTnOEIQVWnBuSlk6kHBSa2PVWd7WaYHawfISTSaaaaums0096Z9AAAAAAAAAAAAAABynry6M1a0KeLpKdTsVqSpwV3GnNuUqiis3moJ22K72bOrAD809XHRKvi8bSlqTp0qE41Z1ZRaSdNqUYxuu9JySVlsV3wP0sAAAAAAADQuutJ6Lae+tBe9TT+FzfTnnXfpGFPRypySc6tSKp/yyh3nJLe7ZcpN7gL7q2VtFYX6D+3I2U/NnRHrAxmE1U6uvRhZOlO2qob7ZXjvzTdt6aP0dhMRGpThUj7M4xlH6MkmvgwMoAAAACNpOM3Qqql+sdOepu7+q9XPnY/KOJjNV59pGUZRk041ItNWeWtGWd7Z58T9bmrdJugGCxtVVq0JxqWSc6UtVzS2KSs07LK9r2yvkgNb6jtI150K9KopulSlB0Zyu139fXpRk9qi4xla7t2m5WOmkPROjKWGoxo0IKFOCsoq+/Ntt5tt5tvNkwAAAAAAAAAAAAAAAAAAAAAAAAAaN1r9Ep47DRnRvKth1Nwp3sp67p6yu8tbVg7X3vajeQB+aOjvQnF4jERovDV6cNZKrOrTnTjGF+9nNK7teyV82t2Z+j9HYONGjTowvq0qcKcb5vVhFRV2/BEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB//Z',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Retour en arrière
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {
              // Action pour ajouter aux favoris
            },
          ),
          IconButton(
            icon: Icon(Icons.download, color: Colors.black),
            onPressed: () {
              // Action pour télécharger
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Carrousel d'images
            CarouselSlider(
              items: carouselImages
                  .map(
                    (image) => ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: 300,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
            ),
            const SizedBox(height: 16),

            // Titre
            Text(
              "GURLI",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // Sous-titres
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Selection 97%",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Best Product",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Description
            Text(
              "A popular solid color cushion cover that can easily be combined with other solid or patterned cushions... ",
              style: TextStyle(fontSize: 16),
            ),
            GestureDetector(
              onTap: () {
                // Action pour lire plus
              },
              child: Text(
                "Read more",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Avis
            Row(
              children: [
                Text(
                  "4.9",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Text("(332 Reviews)", style: TextStyle(fontSize: 16)),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                const SizedBox(width: 4),
                
              ],
            ),

            const SizedBox(height: 16),

            // Boutons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      // Action pour acheter maintenant
                    },
                    child: Text(
                      "Buy Now",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      // Action pour ajouter au panier
                    },
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
