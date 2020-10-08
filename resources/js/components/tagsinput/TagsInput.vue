<template>
  <v-combobox v-model="model" :hide-no-data="!search" :search-input.sync="search" hide-selected label="Tagi" multiple small-chips append-icon="" >
    <template v-slot:selection="{ attrs, item, parent, selected }">
      <v-chip v-if="item === Object(item)" v-bind="attrs" :color="`${item.color} lighten-3`" :input-value="selected" label small >
        <span class="pr-2">
          {{ item.text }}
        </span>
        <v-icon small @click="parent.selectItem(item)" >mdi-close</v-icon>
      </v-chip>
    </template>
  </v-combobox>
</template>

<script>
  export default {
    data: () => ({
      activator: null,
      attach: null,
      editing: null,
      index: -1,
      menu: false,
      model: [],
      items: [],
      x: 0,
      search: null,
      y: 0,
    }),

    watch: {
      model (val, prev) {
        if (val.length === prev.length) return

          this.model = val.map(v => {
            if (typeof v === 'string') {
              v = {
                text: v,
                color: 'primary',
              }

              this.items.push(v)
              this.$emit('tags', this.items);

            }

            return v
          })
      },
    },
  }
</script>