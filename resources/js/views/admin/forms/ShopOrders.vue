<template>
  <v-main class="">
    <v-container>
      <v-card>
        <v-card-title class="justify-content-center">
          <h2 class="pt-4 font-weight-bold panel-title-header first-color">
            Zamówienie - {{ currentObject.main_name }}
          </h2>
        </v-card-title>
        <v-divider class="mt-0"></v-divider>
        <v-form ref="form" v-model="valid" lazy-validation>
          <v-row class="px-3 py-4">
            <v-col class="pa-0" cols="12" md="6">
              <div class="pa-5">
                <h3>Główny adres</h3>
                <v-text-field
                  color="primary"
                  readonly
                  v-model="currentObject.main_name"
                  label="Imię i nazwisko"
                  required
                ></v-text-field>
                <v-text-field
                  color="primary"
                  readonly
                  v-model="currentObject.main_email"
                  label="Adres E-mail"
                ></v-text-field>
                <v-text-field
                  color="primary"
                  readonly
                  v-model="currentObject.main_phone"
                  label="Telefon"
                ></v-text-field>
                <v-text-field
                  color="primary"
                  readonly
                  v-model="currentObject.main_street"
                  label="Ulica"
                ></v-text-field>
                <v-text-field
                  color="primary"
                  readonly
                  v-model="currentObject.main_house_number"
                  label="Numer domu"
                ></v-text-field>
                <v-text-field
                  color="primary"
                  readonly
                  v-model="currentObject.main_flat_number"
                  label="Numer mieszkania"
                ></v-text-field>
                <v-text-field
                  color="primary"
                  readonly
                  v-model="currentObject.main_zip_code"
                  label="Kod pocztowy"
                ></v-text-field>
                <v-text-field
                  color="primary"
                  readonly
                  v-model="currentObject.main_city"
                  label="Miasto"
                ></v-text-field>
                <div class="mt-3">
                  <p class="mb-1">Uwagi do zamówienia</p>
                  <vue-editor
                    disabled
                    v-model="currentObject.main_message"
                  ></vue-editor>
                </div>
              </div>
            </v-col>

            <v-col cols="12" md="6" class="pa-5">
              <h3>Wysyłka na inny adres</h3>
              <v-text-field
                color="primary"
                readonly
                v-model="currentObject.second_name"
                label="Imię i nazwisko"
                required
              ></v-text-field>
              <v-text-field
                color="primary"
                readonly
                v-model="currentObject.second_phone"
                label="Telefon"
              ></v-text-field>
              <v-text-field
                color="primary"
                readonly
                v-model="currentObject.second_street"
                label="Ulica"
              ></v-text-field>
              <v-text-field
                color="primary"
                readonly
                v-model="currentObject.second_house_number"
                label="Numer domu"
              ></v-text-field>
              <v-text-field
                color="primary"
                readonly
                v-model="currentObject.second_flat_number"
                label="Numer mieszkania"
              ></v-text-field>
              <v-text-field
                color="primary"
                readonly
                v-model="currentObject.second_zip_code"
                label="Kod pocztowy"
              ></v-text-field>
              <v-text-field
                color="primary"
                readonly
                v-model="currentObject.second_city"
                label="Miasto"
              ></v-text-field>
              <div class="mt-3">
                <p class="mb-1">Uwagi do zamówienia</p>
                <vue-editor
                  disabled
                  v-model="currentObject.second_message"
                ></vue-editor>
              </div>
            </v-col>

            <v-col cols="12" class="pa-5">
              <h4 class="cart-menu-title">Przesyłka</h4>
              <v-radio-group
                readonly
                :disabled="summary != undefined"
                v-model="currentObject.delivery"
                column
              >
                <v-radio
                  v-for="(delivery, i) in deliveryOptions"
                  :key="i"
                  :label="deliveryLabel(delivery)"
                  :value="delivery.value"
                ></v-radio>
              </v-radio-group>
              <h4 class="cart-menu-title mt-5">Płatność</h4>
              <v-radio-group
                readonly
                :disabled="summary != undefined"
                v-model="currentObject.payment"
                column
              >
                <v-radio
                  v-if="currentObject.delivery != 'in_advance'"
                  :label="cartDescriptions.traditional"
                  value="traditional"
                ></v-radio>
                <v-radio
                  v-if="currentObject.delivery != 'courier'"
                  :label="cartDescriptions.personal"
                  value="personal"
                ></v-radio>
              </v-radio-group>
              <h4 class="cart-menu-title mt-5">Zamówione produkty</h4>
              <div
                class="d-flex justify-content-between align-items-center mb-2 flex-wrap"
                v-for="(product, i) in orderedProducts"
                :key="i"
              >
                <div class="d-flex align-items-center product-data-container">
                  <router-link
                    :to="`/sklep/produkt/${getField(product, 'id')}/${getField(
                      product,
                      'title'
                    )}`"
                  >
                    <div
                      class="cart-menu-product-photo bg-picture"
                      :style="`background-image: url('${url(
                        getField(product, 'photo')
                      )}')`"
                      :alt="getField(product, 'alt')"
                    ></div>
                  </router-link>
                  <div class="ml-2 cart-menu-product-content">
                    <p class="mb-0 cart-menu-product-title">
                      {{
                        getField(product, "title") +
                        " " +
                        getField(product, "subtitle")
                      }}
                    </p>
                    <div class="d-flex">
                      <p
                        :class="[
                          { discounted: getField(product, 'discount') },
                          'mb-0',
                        ]"
                      >
                        {{ getField(product, "price").toFixed(2) }}
                        {{ shopDescriptions.currency }}
                      </p>
                      <p class="pl-3" v-if="getField(product, 'discount')">
                        {{
                          getDiscountedPrice(
                            getField(product, "price"),
                            getField(product, "discount")
                          ).toFixed(2)
                        }}
                        {{ shopDescriptions.currency }}
                      </p>
                    </div>
                    <div class="product-amount">
                      Ilość: {{ product.amount }} szt.
                    </div>
                  </div>
                </div>
              </div>
              <h4 class="cart-menu-title mt-5">
                Kwota: {{ currentObject.sum }} {{ shopDescriptions.currency }}
              </h4>
            </v-col>
          </v-row>
          <v-divider class="mb-0"></v-divider>
          <v-card-actions class="pa-4">
            <v-btn
              :disabled="!valid || currentObject.title == ''"
              color="success"
              class="mr-2"
              @click="validate"
            >
              <v-icon left>mdi-check</v-icon>
              <span>Zatwierdź</span>
            </v-btn>

            <v-btn color="error" class="mr-2" @click="$router.go(-1)">
              <v-icon left>mdi-close</v-icon>
              <span>Anuluj</span>
            </v-btn>
          </v-card-actions>
        </v-form>
      </v-card>
    </v-container>
  </v-main>
</template>

<script>
import FormService from "../../../services/FormService.js";
import axios from "axios";
import url from "@/helpers/photo/url";

let data = {};
let vueComponents = {};

Object.entries(FormService).forEach((form) =>
  form[0] != "data" ? (vueComponents[form[0]] = form[1]) : (data = form[1])
);

export default {
  data() {
    return {
      ...data,
      currentObject: {
        title: "",
        subtitle: "",
        short_description: "",
        description: "",
        photo: "",
        photo_alt: "",
        button_name: "",
      },
      deliveryOptions: [],
      cartDescriptions: {},
      shopDescriptions: {},
      orderedProducts: [],
      url,
    };
  },
  ...vueComponents,
  methods: {
    ...vueComponents.methods,
    deliveryLabel(delivery) {
      return `${delivery.title} ${delivery.price.toFixed(2)} ${
        this.shopDescriptions?.currency
      }`;
    },
    getField(product, field) {
      return product[product.product_id ? "shop_product" : "shop_item"][field];
    },
    getDiscountedPrice: (price, discount) => price * ((100 - discount) / 100),
  },
  watch: {
    currentObject: {
      deep: true,
      handler() {
        axios
          .get(
            `/api/ordered_products/get_where?shop_order_id=${this.currentObject.id}`
          )
          .then((res) => (this.orderedProducts = res.data));
      },
    },
  },
  mounted() {
    axios
      .get("/api/delivery_options/get_all")
      .then((res) => (this.deliveryOptions = res.data));
    axios
      .get("/api/cart_descriptions/get_one/1")
      .then((res) => (this.cartDescriptions = res.data));
    axios
      .get("/api/shop_descriptions/get_one/1")
      .then((res) => (this.shopDescriptions = res.data));
  },
};
</script>

<style scoped>
.product-amount {
  font-size: 1rem;
  font-weight: 500;
}
.cart-menu-product-title {
  font-size: 1.5rem;
  font-weight: 600;
}
.cart-menu-product-photo {
  width: 100px;
  height: 100px;
}
</style>