Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B292464C
	for <keys@linux.kernel.org>; Tue,  2 May 2023 14:44:02 +0000 (UTC)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-77724311e3cso1071100241.1
        for <keys@linux.kernel.org>; Tue, 02 May 2023 07:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1683038641; x=1685630641;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QK55qDzwWxLqGn7LYCp3b+RLHU67wLFOhYnrzbocMYw=;
        b=OPA16j/uE5YYaiA5+tmeUhbFTliFbgnaza5CkgVirE167RvPDdel38+3+1Ozrn2vGT
         cww7+i+n0WjSYYBJRwd89Izh/UMqQ7ZcJDxmZM6gnVA3/sg5YYyfow/lkrdKJ93QAa9N
         OOlzIzCE9Yq8n9sunYrEdyVOP81L221gcEF6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683038641; x=1685630641;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QK55qDzwWxLqGn7LYCp3b+RLHU67wLFOhYnrzbocMYw=;
        b=k3prJOb8x19Y0/61n8pyBcODr8OoNy0MfmmUcflPbNu8W8Um1yjTaa1OvGMhMh8F4G
         jFtXMvF1X1zg6FmZlitItYGf2KDZxKKKgXfDyiGbyqlO8GNN5munF1zilpHRrNJ1qNC8
         DcfA5aGKMByWo/FLogv3TwDCUMKGd7blCbBIHlPN0VO6y6O6894i5YS2lKgCJb29d2bj
         x2GHFnnMVyABLPhbtiR+AP6QshhODLIYImohMCvCJHxunHM2AtnpA+4wuN20I3O19ASs
         eNxgmmHLN6wyq45Z9S75ObCXIFn0vuljY6+mqSrSw3i9XqktIVsSDW6olfViY9zA/ihN
         GPkg==
X-Gm-Message-State: AC+VfDwMLe+05FlanxXFLDnu9dQCt+bGDpiUw3+hlJSMavLsuXTW4/cV
	dQTdzGdRKz7SLzb5WVIVvAx2x8M+bVaiSFwM5XsDgnhB9iUPQp2z
X-Google-Smtp-Source: ACHHUZ6MAfDb2a9sNW8nZb2sVS+5C0ENpo5ocw33V0HCKrdtQTf7c6bq1NDR4QyVRlq/95s2OU24b0RWcSMVk/eFhQM=
X-Received: by 2002:a67:edc6:0:b0:42e:ad0d:4da4 with SMTP id
 e6-20020a67edc6000000b0042ead0d4da4mr114914vsp.5.1683038641550; Tue, 02 May
 2023 07:44:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
References: <12955de1-2ddf-8f96-1c0a-cae2098a918d@linaro.org>
In-Reply-To: <12955de1-2ddf-8f96-1c0a-cae2098a918d@linaro.org>
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Date: Tue, 2 May 2023 10:43:50 -0400
Message-ID: <CAMwyc-TpLkWLn9h3kGnwv0Y1M7SeTQGJVW1rXaV0UNZgD=Q-cg@mail.gmail.com>
Subject: Re: 2 x signed key for bryan.odongohue@linaro.org 22713BB3A18DC83A.asc
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: keys@linux.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 May 2023 at 10:39, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>

Updated, thanks.

-K
