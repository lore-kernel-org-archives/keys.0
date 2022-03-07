Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B667C
	for <keys@linux.kernel.org>; Mon,  7 Mar 2022 19:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1646679914;
	bh=D/HlWHhQNh7Vo4DNMNd3NwT8SJe7ieVf1tVBKGjm0tE=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
	b=UJwjJ9Ksqho19JndqM7pPSLDKsTwIG3dQiqzuim0p8HUSMmVM6HiELs6TISmyWxuK
	 4GoEeI+tlMcs+ninsfVX2nywO9tjVfKzgvfRx41bSz/DNGTV0wxjGG4F2hag0Az3fd
	 z1lGca+Qvw3Ja7TQQ3HgjTD7FGGyeO48GqXV2z1w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.169.192]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M3DJl-1nSg6x2MW5-003bbh; Mon, 07
 Mar 2022 20:05:14 +0100
Message-ID: <9fe394c8-ce7e-28e6-331f-8614b0857623@gmx.de>
Date: Mon, 7 Mar 2022 20:05:14 +0100
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: GPG public key Helge Deller
Content-Language: en-US
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
References: <YiUGPW2iI/uNUeep@ls3530>
 <20220307174232.d35s752pthqntwog@meerkat.local>
From: Helge Deller <deller@gmx.de>
In-Reply-To: <20220307174232.d35s752pthqntwog@meerkat.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:mSNMx8jio5ICfqI1a39YfrFchZ0BzEf6oq0U4GJK+oxSUZwbZPn
 +5tTSOg/W3WxX2N7+n6dreTucTJD5cH1l+QpxEN8nnZfiXzYQupDrBK9ak4PrYXsSdrhUbR
 NUO96O2Z5sJkeDn/rGAJI+XDv8FyWovDSXe1lXLN/PZDYvMoEFF6MyTGzCcMy8VElgSRwAB
 alzXsOmq5Z74sXMSQTlcQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Smd3TFNrxEo=:6C4v5vpgvdwlr/lD7OCDLD
 ySnpAumJC0TJDfEjrcDWmDEdBJhXNSCunjGSS51We4NTFcopwLAojTvD/7Ou2pdhbmXT59wDW
 2KU/jPSVmYLfEt7jjWSoum+py4mrVxFh7LkrPMrnHo9a+PWQ4lKu8su2JDAdGoHBOehs9/hc3
 AaNRp2/aRJBrf4AZhghrjkDydFw228G7F1pcn+QnsbdCaDoCGJzJjbk6xf4mAKFhcbw3vkIvu
 1zgc3RuVF4ZExD2quljdi/HyZ0hwyG97+hlYj4N4UHyvDded1Bz5UZtMRzlWFwldsqJxejqve
 lJggEhk6wzc+y6U+l3GHoot6zaKGMBRIpsY6A2XaGfDR0Rk+yLWFOcvN9KjBdXdJMYTF6gwLE
 fRpNqBozZZMn55LlMeLulvm4s/7+4W7XNlQbHsN+kIad9m0LyCDt85h+WBrtR0OH8l8OHtlL7
 Y/cbXbcBRpzaJS6xd/2bFVa8VAOxw0WKgE1mLmlRGjsI68gkdcz15Nz59fAlZgwqE9dZO0ewr
 7KJdbjvM/pdHU1EH8IfG3KVLIe4UPuUOWonQqvpc9f2F8rO7ccylEgISf3/dJvd3rYxi7wKX1
 OKUKCU8uk/H4m/Et+qAI3/XlNi9tPN4rZoLDRqQUOMLpkHaTqU4Wo1PXcLBYTUv+NdoPqWjL8
 Pq/uIDYkRX/GaSn1AW9LClKHgO5jHELbECa7B3JKjL2CABSYjdMYa018Hr2eYdXJvK7w+0xbr
 m/OaZ9u3BCo7m8vzItuJN4nzMHBJEjgfHS332DapzcFQryQPEnShq+jvjvRIcBlh9YXBu/XNc
 gAS738ASDjHOPv+BX0ioRC5sT2kWRiDekrh+j+fy7xp6vyB0faoIoC5IE9nxFgoFcLK1d2PA+
 RnlHrMNNHBHcrSKna0iu+y26R0n6HamYvUxw64QxK88qa84Knoo4iCUdAFoAKsXJ6Q/FFWnLc
 aaVKaVwVz0fHPUsDc6q4KwK1myD4LRg8mVF1T/PtsVbBzvpkOik+2Z2lcyAuK/8JQYvaYU5s2
 jXCSh+LP3AuBOPPnEx2fHB+fhtlAuMTXHE+raUrm18Qu222GsBWpYTaRvw0gKsY/q5NjJJIzD
 Ylv9Goaml4sWno=

Hello Konstantin,

On 3/7/22 18:42, Konstantin Ryabitsev wrote:
> On Sun, Mar 06, 2022 at 08:06:37PM +0100, Helge Deller wrote:
>> -----BEGIN PGP PUBLIC KEY BLOCK-----
>
> Hmm... this adds a new key that we don't currently have on file for you:
>
>     pub   rsa4096 2019-11-10 [SC]
>           454482282CD910DBEF3D25F83E5F3D04A7A24603
>     uid                      Helge Deller <deller@gmx.de>
>     uid                      Helge Deller <deller@kernel.org>
>     uid                      Helge Deller <deller@debian.org>
>     sub   rsa4096 2019-11-10 [E]
>           A66C1BA2340E4BC2471998239FA7FDAEED273BFD
>     sub   ed25519 2019-11-10 [S]
>           BCE9123E1AD29F07C049BBDEF712B510A23A0F5F
>
> This is the one we have:
>
>     pub   rsa2048 2012-12-17 [SC]
>           F4CFF4C00BE43CFB5153A06887C9C151B51E3864
>     uid                      Helge Deller <deller@gmx.de>
>     uid                      Helge Deller <deller@kernel.org>
>     sub   rsa2048 2012-12-17 [E]
>           2952AE7E354B9C8515D844B3C8698BFB918CE487
>     sub   rsa4096 2013-11-10 [S]
>           969B8CEA9EC2C53635C35F77A183955F30A51241
>     sub   ed25519 2018-06-12 [S]
>           CF9C33A6CB5FD342876C8AC6202A4978DD4FAC5D
>
> Is it your intention to use the newer key from now on?

Yes.
I used that newer key already in the last few pull requests to Linus.
I had to generate the new key, because as Debian developer it was required=
 to
provide a rsa4096 key.

Thank you!
Helge
