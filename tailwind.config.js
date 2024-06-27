/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js}"],
  theme: {
    extend: {
      container: {
        center: true,
        screens: {
          sm: "420px",
        },
      },
      spacing: {
        footer: "72px",
      },
      backgroundImage: (theme) => ({
        backdrop: "url('./assets/images/backdrop.webp')",
        facebook: "url('./assets/images/facebook.svg')",
        tiktok: "url('./assets/images/tiktok.svg')",
        youtube: "url('./assets/images/youtube.svg')",
      }),
    },
  },
  plugins: [],
};
