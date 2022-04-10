Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018B1EA1
	for <keys@linux.kernel.org>; Sun, 10 Apr 2022 10:38:53 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id CF9515C00F5;
	Sun, 10 Apr 2022 06:38:52 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sun, 10 Apr 2022 06:38:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; bh=LVcekAUCCC8/RqTT/QOjLA8WPd9Ptn5dM2d1jF
	iV2AU=; b=gRdcHbct09dJBEg+RAAzoqUyGz8xzTS3+HFmik6dc73N4OwSRVirot
	jNuRfDVg03rObI82LGSbg+7MaeehqUMon3B0uuce1tr224USeHIaW1nyqaspvNSa
	tKTCS/QGRxqi8qkESxy2mHVFK/KZEszTNC9fI+R3yTgXmYsH+Ru9GCVNeHD2kx+d
	QLVdPTC4Bkppqi6oEvEoRekxOLPF0jt6+paNyhk7qMMBLilS3y+TkFpHAEnOjwgn
	SqnvVZjjjz2rvp3qUv+csacoRw+eGYJH0P84HgtK0yS8u2Dyf8s6aGEbdN+uKgTJ
	b/pXXN/rUeQ8aLT60/2c8bu5gaZuvHzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=LVcekAUCCC8/RqTT/
	QOjLA8WPd9Ptn5dM2d1jFiV2AU=; b=nNwdo1zM3QaipdzjGoCcaRKw7dZiiJ25B
	WK1aUTuBXgfHIp4fYWZXY7zw5Zz98XMjLVcE3RtmguOKT07JEkh4Pal1nl7LWGbH
	kHrI12I+J1BDclEtwPeKZyEF3Ytc141tObYhd557fi5Dg8akiLuV8uZCgY/JukbJ
	aUUo1Uj8u4vdUMbf5EDzxJ/Dee5eh+D+KU0vex9Fx3Y0KNJMPNW9HCkr+pzkWkHn
	XDCev4pfRn9kNzaKmu8zzxtUgap/wzsvk4TMDwpR+TjGus0X96MsZ4nfwsKFxaPq
	kxdnhpbVH4kjV05ot7m6SSjGfwoJUXKaEfaks006t3lNSrxMSgwKQ==
X-ME-Sender: <xms:vLNSYg3baMhiAJjYhmcJAy_6NXfI6E7JVDbzh7T5a76SkQjWrfOrvA>
    <xme:vLNSYrEOZQfhLV-7543eiWjw1Boeoqw2i8oAwhxI82t8QcqbeL1j5UGwsTBjbeBrL
    r4izRDQVygbzg>
X-ME-Received: <xmr:vLNSYo6fxvFvMgmROLz48JfSQsSaxG91YM1QIPVScCv3mH61nhJaSXiaH-N8Jk5EXTUQFkZVzk0q5B84oiKMtbuWPDE1mITO>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekgedgvdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
    fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomh
X-ME-Proxy: <xmx:vLNSYp3vtuTaJqtiCv1FieKRLGd_ZYkGmMkpawFvCoKCKYua6-gQuw>
    <xmx:vLNSYjHYKgQTQQGYHOe6BtbVzshw3ZaJD6BWyUY2nHpby19xqnq92Q>
    <xmx:vLNSYi-vjJCC20U0vhyPwlTAzR4U-CGCO-LW4w1qXaNPZfIIHQG4kQ>
    <xmx:vLNSYoRarJCU5XFjMT82T8sspTEY5hTmoKev4qvHnvD0DHSFgDrmpw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Apr 2022 06:38:52 -0400 (EDT)
Date: Sun, 10 Apr 2022 12:38:49 +0200
From: Greg KH <greg@kroah.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: keys@linux.kernel.org
Subject: Re: Sending my PGP key
Message-ID: <YlKzuVE08t+TDs68@kroah.com>
References: <YlHVYPDbNy1YkBlY@google.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YlHVYPDbNy1YkBlY@google.com>

On Sat, Apr 09, 2022 at 11:50:08AM -0700, Nick Desaulniers wrote:
> Hello,
> Attached is my PGP key. Please let me know if I've exported it
> correctly.



I looks correct.  I've added you to the list, you should get a "welcome
to the list" email in about an hour or so.  Let me know if you can not
read it or if there are any problems with it.

And thanks for joining, it's much appreciated.

thanks,

greg k-h
