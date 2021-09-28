Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C2D3FC8
	for <keys@linux.kernel.org>; Tue, 28 Sep 2021 17:18:16 +0000 (UTC)
Received: by mail-qk1-f173.google.com with SMTP id d207so41706371qkg.0
        for <keys@linux.kernel.org>; Tue, 28 Sep 2021 10:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ghblpGx29HMqWwSkilzqPdHhFVQ0MC4tGmEjU8RIqKw=;
        b=aY0E25iF4xluJA1JlC2h26M8myFdYl3Jz8awdIDKke3UWnlcJ13YdWQ04tknu0OxNQ
         yANXyk8nofYs7xNWn/b0FKYzh6ReiamOInjelp7lRcbfOc9gq9VJ7uqpHXywHCKbMa5H
         nPCIEGQh0bBoxcig4nc8r+8DA+CrW97TCxT+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ghblpGx29HMqWwSkilzqPdHhFVQ0MC4tGmEjU8RIqKw=;
        b=iNkiJzemWVgp48lLxDJIPeyPB7lbPZogmlpnnhqiSNEg+ppa/mCmU+QfPZLUaDdn+C
         czjAzw5APC6rJZ8fAOumODGJlLv7pXWfLi2eAQ2LydcxCUOVBMdvTaA+jlLMvOs7LUFk
         eaXJsAgSldSPhBgLEtLJGqST9H0Ogw51YOQxGsT4/+KYDrYj7W+tPfSHSznse6O6Ptnu
         fau6pMMPDS/RAmlT/bzDl+Dxafs26KKZdP6zCNtVcji++WcRU6Wa0M+Ra4szbLo2pJIE
         Hjb28pMr5tHlGUZU8d8FRLXCmZyKwHypVO17Kx65SGKDZoG8oRTibq3eLFLlPe+glGdB
         k51A==
X-Gm-Message-State: AOAM531fLBXYmXUk5+1I5ibT1Y9l9mWL05ZPnEoIAY09oovZKVlk3hbC
	dPLCuVMLNOxqeYqh/5YA8tRv05ICn/bvuQ==
X-Google-Smtp-Source: ABdhPJwvt/vmartrkRO5nOvzlbRBh2U0I2m8qyaGcM0vOSYxfAOuqH68FtcWeyodO7cTMyJxJI0Cuw==
X-Received: by 2002:a37:d50:: with SMTP id 77mr1116577qkn.299.1632849495350;
        Tue, 28 Sep 2021 10:18:15 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id f24sm13347654qtq.25.2021.09.28.10.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 10:18:14 -0700 (PDT)
Date: Tue, 28 Sep 2021 13:18:13 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: keys@linux.kernel.org
Subject: Re: andrew.cooper3@citrix.com
Message-ID: <20210928171813.3p2l5apko5ezfpko@meerkat.local>
References: <20210928122547.17409-1-andrew.cooper3@citrix.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210928122547.17409-1-andrew.cooper3@citrix.com>

On Tue, Sep 28, 2021 at 01:25:47PM +0100, Andrew Cooper wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Added, thanks!

-K
