# Kullanılacak imaj
FROM python:3.8-slim

# Çalışma yeri
WORKDIR /app

# Bulunduğumuz dizindeki dosyaları container içine kopyala
COPY . /app

# gerekli paketleri yükle
RUN pip install --no-cache-dir -r requirements.txt

# Dünya adında ortam tanımla
ENV NAME World

# Container başlatıldığında app.py dosyasını çalıştırır

CMD ["python", "app.py"]
