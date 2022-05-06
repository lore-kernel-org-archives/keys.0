Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4165D811
	for <keys@linux.kernel.org>; Fri,  6 May 2022 13:21:50 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id x22so5938983qto.2
        for <keys@linux.kernel.org>; Fri, 06 May 2022 06:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=QUPZAY4pREF/ohe9zDF6BwHlJ8fwHt+7pOY9TYgFkqM=;
        b=Snl+LrTykQvu2adVqhaOCpz06Gth927jnFBKWB0FJ0cG51va8ZLjEmT88Tl37JdfJI
         TxqkQXqSN9P53uRI2+m4uewPWLlSpW3skNVA2emB91+pg7hckUwgOLFuc0a/7B7qQ1R5
         qx8hpeXeISP4aJAt1CIM+gYcj7kqdoOvqLhy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=QUPZAY4pREF/ohe9zDF6BwHlJ8fwHt+7pOY9TYgFkqM=;
        b=uqmB1ytbs7AqYL75ljmDDeRjw5cypMtRvpRGr7RqHl7DlvMMocPTcPD5k1Z7HRP5sq
         kNsCyZMr6c8DS6F1W+DX8qwnbDbuJIT4WEpgtFoTPNokhzdqsx0n48NNUMogziPXwBJO
         fJM3uwDNkmbpnmacoUXBedf3oR4+mMulOHImcVJDYx3p+zmsbmS44f/4wevfdwM0QNlR
         d6U8fbAae3fpL6bnO71sHEwKdpNeuQKDNTRfPZ1iqOUgilGTVxDMTdBl0MBG+6MV6ZjR
         7Ht+SklfxemrGkhVbbENyE4IVTA0Me8H8TbU/cE2Fsj0Z3fMa4SSJabBHTeZio1i/UEC
         1MvQ==
X-Gm-Message-State: AOAM530elxJrtfdklJEuCoBW4j1untm0W+SW+/Q2Zd++Il0H37Yyetyx
	GsB5/4hApZ16Cb0ZGnOMUdKJETiT4v+DWRkO
X-Google-Smtp-Source: ABdhPJxnYsZLqomcOECcsZzgQcKr6E1B7C7j/CqSlUOcQ5eAseb+QbVCbqT8TVUjYSWgkXFRw3XBDA==
X-Received: by 2002:ac8:5a54:0:b0:2f3:b955:38db with SMTP id o20-20020ac85a54000000b002f3b95538dbmr2602390qta.485.1651843308825;
        Fri, 06 May 2022 06:21:48 -0700 (PDT)
Received: from nitro.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id h191-20020a379ec8000000b0069fc347ef5dsm2316763qke.74.2022.05.06.06.21.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 06:21:48 -0700 (PDT)
Date: Fri, 6 May 2022 09:21:46 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: wens@csie.org
Message-ID: <20220506132146.5tb6sf2pt2vvd4ly@nitro.local>
References: <YnSXhs0EXNO2tyMr@wens.csie.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YnSXhs0EXNO2tyMr@wens.csie.org>

On Fri, May 06, 2022 at 11:35:34AM +0800, Chen-Yu Tsai wrote:
> 

Updated, thanks.

-K
