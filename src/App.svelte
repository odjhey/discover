<script lang="ts">
    export let name: string;

    const services = [
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
            desc: "simple express, mostly used to test pings and installations",
            url: {
                label: "hello-world",
                url: "http://node-www-dockerized-hello-world.apps.odee.io/",
            },
            repo: {
                label: "github",
                url: "https://github.com/odjhey/node-www-dockerized-hello-world",
            },
            tags: "nodejs, express",
        },
        {
            name: "Discover",
            desc: "this",
            url: { label: "this", url: "http://discover.apps.odee.io/" },
            repo: {
                label: "discover/github",
                url: "https://github.com/odjhey/discover",
            },
            tags: "svelte",
        },
        {
            name: "elixir-api",
            desc: "play with elixir",
            url: { label: "elix-api", url: "http://elix-webhook-pp.apps.odee.io/" },
            repo: {
                label: "github",
                url: "https://github.com/odjhey/elix_webhook_processor",
            },
            tags: "elixir, plug, cowboy, poison",
        },
    ];
</script>

<main>
    <div class="header">
        <h1>Hello {name}!</h1>
        <p>
            List of growing deployed services, most are useless as they are only
            built to aid learning.
        </p>
        <hr style="height: 2em; border-width:0;" />
    </div>
    <div style="overflow-x:auto;">
        <table class="center">
            <tr>
                <th>Service</th>
                <th>Description</th>
                <th>Repo</th>
                <th>Url</th>
                <th>Tags</th>
            </tr>
            {#each services as service}
                <tr>
                    <td>{service.name}</td>
                    <td class="col-desc">{service.desc}</td>
                    <td style="min-width: 10em;"
                        ><a href={service.repo.url} target="_blank"
                            >{service.repo.label}</a
                        ></td
                    >
                    <td style="min-width: 10em;"
                        ><a href={service.url.url} target="_blank"
                            >{service.url.label}</a
                        ></td
                    >
                    <td>{service.tags}</td>
                </tr>
            {/each}
        </table>
    </div>
</main>

<style>
    .col-desc {
        max-width: 20em;
        min-width: 15em;
        word-wrap: break-word;
    }
    .header {
        text-align: center;
        padding: 1em;
        max-width: 460px;
        margin: 0 auto;
    }

    h1 {
        color: #ff3e00;
        text-transform: uppercase;
        font-size: 4em;
        font-weight: 100;
    }

    td {
        vertical-align: top;
        border-bottom: 1px #dcdcdc solid;
        padding-bottom: 1em;
    }

    th {
        border-bottom: 1px #bcbcbc solid;
    }

    .center {
        margin-left: auto;
        margin-right: auto;
    }

    @media (min-width: 640px) {
        .header {
            max-width: none;
        }
        td {
            padding-top: 1em;
            padding-left: 1em;
            padding-right: 1em;
            border-bottom: none;
        }
    }
</style>
