Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B34139F
	for <keys@linux.kernel.org>; Wed,  7 Jun 2023 13:50:43 +0000 (UTC)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-3f7fdbdf68eso80569151cf.1
        for <keys@linux.kernel.org>; Wed, 07 Jun 2023 06:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686145842; x=1688737842;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n9mAUicOHiSqL+zeZm99UaLTaNxN6m78rcXYGsKl7r4=;
        b=bRgTb7oTRvb3DuMnsSNuNTDGX6Opg/oPaB5RqIa/1cew5Sq0AJeH43ffSBDls1GU8s
         ty9I5+RaprTLAOKefOAAI1Da7LpIT3TTWnYcgmRmA3LY9VZp1oW0RJtQJKIOz+w97WJj
         n4D+8OAQfsRQmbu2yeuYcAqVV3mWwpu6PhYzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686145842; x=1688737842;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n9mAUicOHiSqL+zeZm99UaLTaNxN6m78rcXYGsKl7r4=;
        b=PwH/rWmqbGliZfChqofmmlACSjXzc2iAHd5ZmZJXm6H97vbzWpIrmSov02jzXdHeAl
         iiyiDYqmM18YqCJ1ww1UDLbEWMKCpRB0cWuZjJqzJXPj1mw8GZDbB2UAjYMkTBg9g5yU
         mJ2dQE6OBkM6wDSC8uZVObywWppaJzlxCjo90oD8/zg4bWBhHKbnJNXnLga4Gq2Bots2
         JxKelCRlr777ZRakg8hKS+2q66ekxFzGtozlWdGecmyF1/Mlti7ulxj3lsyURXxeitYC
         m6pC6/VeAERgxU/pmOW5eXIjzNg74CWzqWx2+VglpBqo7nxnZvF72dpzR6C/DH0QvKd3
         LgHQ==
X-Gm-Message-State: AC+VfDx462K4KkAcabbIHK5lsyCMyCxIeIa7yiwV9znliy8ygs7fV1WP
	qnRxKyVejUYrfQ7kc8sdKn6NIN3yicCy9CV6FWs=
X-Google-Smtp-Source: ACHHUZ5tPoRpXPgqD7scc+ksGx5wBBxm6Bg5V/vBonh84G0VKcfLcxq8AvYfi5T9Ts6fnP3e+fQQVQ==
X-Received: by 2002:ac8:5a11:0:b0:3f6:910a:aace with SMTP id n17-20020ac85a11000000b003f6910aaacemr3614986qta.23.1686145842236;
        Wed, 07 Jun 2023 06:50:42 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-132.dsl.bell.ca. [209.226.106.132])
        by smtp.gmail.com with ESMTPSA id e12-20020ac8130c000000b003f7fd3ce69fsm1276178qtj.59.2023.06.07.06.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 06:50:41 -0700 (PDT)
Date: Wed, 7 Jun 2023 09:50:40 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update signature for Andi Shyti
Message-ID: <20230607-grief-canopener-b08b3b@meerkat>
References: <20230607052546.wsua7qrwltld4ad6@intel.intel>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230607052546.wsua7qrwltld4ad6@intel.intel>

On Wed, Jun 07, 2023 at 07:25:46AM +0200, Andi Shyti wrote:
> Hi,
> 
> please find attached an update of my key.

Updated, thanks.

-K
