library(qrcode)

# URLs we need to make QR codes
url_pt <- "https://projeto-dourados.org"
url_en <- "https://projeto-dourados.org/en"
# this one is a contact card in .vcf format
url_contato <- "https://projeto-dourados.org/contato.vcf"

q_pt <- qr_code(url_pt, ecl = "L")
q_en <- qr_code(url_en, ecl = "L")
q_contato <- qr_code(url_contato, ecl = "L")

projeto_verde <- "#92ac85"
azul <- "#0061F0"
amarela <- "#FCFBAB"
cor_escolhido <- projeto_verde

par(mar = rep(0,4))

generate_svg(q_pt, filename = "imagens/qrcode_pt.svg", foreground = cor_escolhido)

generate_svg(q_contato, filename = "imagens/qrcode_contato.svg", foreground = cor_escolhido)
