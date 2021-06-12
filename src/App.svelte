<script lang="ts">
    export let name: string;

    const services = [
        {
            name: "Discover",
            desc: "this",
            url: { label: "odee.io", url: "odee.io" },
            repo: { label: "discover/github", url: "odee.io" },
            tags: "svelte",
        },
        {
            name: "go-api",
            desc: "try-go",
            url: {
                label: "try-gorilla-mux-golang",
                url: "http://try-gorilla-mux-golang.apps.odee.io/",
            },
            repo: {
                label: "github",
                url: "https://github.com/odjhey/try-gorilla-mux-golang-template-for-throw-aways",
            },
            tags: "golang, gorilla-mux",
        },
        {
            name: "node-bare",
            desc: "simple express",
            url: {
                label: "",
                url: "",
            },
            repo: {
                label: "",
                url: "",
            },
            tags: "nodejs, express",
        },
    ];
</script>

<main>
    <h1>Hello {name}!</h1>
    <p>
        List of growing deployed services, most are useless as they are only
        built to aid learning.
    </p>
    <hr style="height: 2em; border-width:0;" />
    <table class="center">
        <tr>
            <th>Service Name</th>
            <th>Description</th>
            <th>Url</th>
            <th>Repo</th>
            <th>Tags</th>
        </tr>
        {#each services as service}
            <tr>
                <td>{service.name}</td>
                <td style="min-width: 15em;">{service.desc}</td>
                <td style="min-width: 10em;"
                    ><a href={service.url.url}>{service.url.label}</a></td
                >
                <td style="min-width: 10em;"
                    ><a href={service.repo.url}>{service.repo.label}</a></td
                >
                <td>{service.tags}</td>
            </tr>
        {/each}
    </table>
</main>

<style>
    main {
        text-align: center;
        padding: 1em;
        max-width: 240px;
        margin: 0 auto;
    }

    h1 {
        color: #ff3e00;
        text-transform: uppercase;
        font-size: 4em;
        font-weight: 100;
    }

    th {
        border-bottom: 1px #bcbcbc solid;
    }

    td {
        padding-top: 1em;
    }

    .center {
        margin-left: auto;
        margin-right: auto;
    }

    @media (min-width: 640px) {
        main {
            max-width: none;
        }
    }
</style>
